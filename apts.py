#!/usr/bin/python

import getpass, MySQLdb, os, pyLib, sys
from prettytable import from_db_cursor

#Database login and interface instanciator (cursor)
db = MySQLdb.connect(host = "localhost", user = "it635", passwd = "password", db = "apartments")
dbCur = db.cursor()

#Print login menu
pyLib.menuLogin()

#Login procedure
logChoice = str(raw_input ("\nWhat would you like to do? "))
while logChoice not in ("1", "2", "3", "99"):
	logChoice = raw_input ("Please enter a valid option: ")

dbRole = None

if logChoice == '1':
	#Administrator login
	dbUsr = str(raw_input("\nUsername: "))
	dbPass = getpass.getpass("Password:")
	dbRole = "administrator"
	pyLib.loginProc(dbCur, db, sys, dbUsr, dbPass, dbRole)

elif logChoice == '2':
	#Renter login
	dbUsr = str(raw_input("\nUsername: "))
	dbPass = getpass.getpass("Password:")
	dbRole = "renter"
	pyLib.loginProc(dbCur, db, sys, dbUsr, dbPass, dbRole)

elif logChoice == '3':
	#Inserting new renter/user		
	userName = '\'' + str(raw_input("Enter username: ")) + '\''
	passWord = '\'' + getpass.getpass("Enter password: ") + '\''
	locSearch = str(raw_input("Enter location of interest: "))
	locSearch = '\'' + pyLib.testLoc(locSearch) + '\''
	stySearch = '\'' + str(raw_input("Enter desired style: ")) + '\''
	minRent = str(raw_input("Enter minimum rent range: "))
	maxRent = str(raw_input("Enter maximum rent range: "))
	role = "'renter'"
	pyLib.renterInsert(dbCur, db, userName, locSearch, stySearch, minRent, maxRent)
	pyLib.userInsert(dbCur, db, userName, passWord, role)
	print ("Successfully created your profile, " + userName + ". Please log in as a renter with your new credentials.")
	print ("Press any key to continue...")
	raw_input()	
	sys.exit()

elif logChoice == '99':
	#Exit from login menu
	dbCur.close()
	db.close()	
	print ("Exiting...")
	sys.exit()

if logChoice == '1':
	#Value that controls menu navigation
	selection = True

	#Print menu
	pyLib.menuSys()

	#Menu loop
	while selection:

		selection = raw_input("\nWhat would you like to do? ")
	
		if selection == '1':
			#Inserting new apartment listing
			print ("Insert new apartment\n")		
			rent = str(raw_input("Enter rent: "))
			bed = str(raw_input("Enter number of bedrooms: "))
			bath = str(raw_input("Enter number of bathrooms: "))
			style = str(raw_input("Enter style - choose from Contemporary, Cottage, Mediterranean, Traditional, Rustic or Retro: "))
			style = '\'' + pyLib.testStyle(style) + '\''
			age = str(raw_input("Enter age of apartment: "))
			loc = str(raw_input("Enter location: "))
			loc = '\'' + pyLib.testLoc(loc) + '\''
			status = '\'' + str(raw_input("Enter the rental status: ")) + '\''
			pyLib.aptInsert(dbCur, db, rent, bed, bath, style, age, loc, status)
			print ("Successfully created new apartment!")

		elif selection == '2':
			#Inserting new renter
			print ("Insert new renter\n")		
			userName = '\'' + str(raw_input("Enter username: ")) + '\''
			locSearch = str(raw_input("Enter location of interest: "))
			locSearch = '\'' + pyLib.testLoc(locSearch) + '\''
			stySearch = str(raw_input("Enter style - choose from Contemporary, Cottage, Mediterranean, Traditional, Rustic or Retro: "))
			stySearch = '\'' + pyLib.testStyle(stySearch) + '\''
			minRent = str(raw_input("Enter minimum rent range: "))
			maxRent = str(raw_input("Enter maximum rent range: "))
			pyLib.renterInsert(dbCur, db, userName, locSearch, stySearch, minRent, maxRent)
			print ("Successfully created profile for " + userName + "!")

		elif selection == '3':
			print ("Apartment search for renter\n")
			renterName = str(raw_input("Enter the renter's username: "))
			dbCur.execute("select * from renter where renteruname = '" + renterName + "'")
			if (dbCur.rowcount == 0):
				print ("User " + renterName + " does not exist. No results to show.")
			else:
				for row in dbCur.fetchall():
					userLoc = row[1]
				dbCur.execute("select * from apt where location = '" + userLoc + "'")
				if (dbCur.rowcount == 0):
					print ("No results!")
				else:
					tableOut = from_db_cursor(dbCur)
					print(tableOut)
		
		elif selection == '4':
			#Updating rental status of an apartment
			print ("Update status of rental\n")
			aptNum = raw_input("Enter the apartment number to update: ")
			currStat = raw_input("Enter the current status of the apartment - (r)ented or (v)acant: ")
			pyLib.aptStatUpdate(dbCur, db, aptNum, currStat)			

		elif selection == '5':
			print ("Report\n")
			dbCur.execute("select * from apt where rentalstatus = 'r'")			
			print ("Rented apartments: " + str(dbCur.rowcount) + "\n")			
			tableOut = from_db_cursor(dbCur)
			print(tableOut)

			dbCur.execute("select * from apt where rentalstatus = 'v'")			
			print ("\nVacant apartments: " + str(dbCur.rowcount) + "\n")			
			tableOut = from_db_cursor(dbCur)
			print(tableOut)
			
			dbCur.execute("select * from apt where rentalstatus = 'u'")			
			print ("\nUnavailable apartments: " + str(dbCur.rowcount) + "\n")			
			tableOut = from_db_cursor(dbCur)
			print(tableOut)

		elif selection == "99":
			dbCur.close()
			db.close()
			print("Exiting...")
			sys.exit()

		elif selection != "":
			print("\nPlease enter a valid option.")

		elif (len(selection) == 0):
			selection = True
			print("Try again!")

else:
	#Value that controls menu navigation
	selection2 = True

	#Print menu
	pyLib.menuRenter()

	#Menu loop
	while selection2:

		selection2 = raw_input("\nWhat would you like to do? ")

		if selection2 == '1':
			print("\nResults:\n")
			dbCur.execute("select * from renter where renteruname = '" + dbUsr + "'")
			for row in dbCur.fetchall():
				userLoc = row[1]
			dbCur.execute("select * from apt where location = '" + userLoc + "'")
			if (dbCur.rowcount == 0):
				print ("No results!")
			else:
				tableOut = from_db_cursor(dbCur)
				print(tableOut)

		elif selection2 == '2':
			print("Update Location")

		elif selection2 == '3':
			print("Update Style")

		elif selection2 == '99':
			dbCur.close()			
			db.close()
			print("Exiting...")
			sys.exit()

		elif selection2 != "":
			print("\nPlease enter a valid option.")

		elif (len(selection2) == 0):
			selection = True
			print("Try again!")
			

#input()
