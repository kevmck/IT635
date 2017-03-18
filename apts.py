#!/usr/bin/python

import getpass, MySQLdb, os, pyLib, re, sys
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
	stySearch = str(raw_input("Enter style - choose from Contemporary, Cottage, Mediterranean, Traditional, Rustic or Retro: "))
	stySearch = '\'' + pyLib.testStyle(stySearch) + '\''	
	minRent = str(raw_input("Enter minimum rent range: "))
	minRent = pyLib.testNum(re, minRent)
	maxRent = str(raw_input("Enter maximum rent range: "))
	maxRent = pyLib.testNum(re, maxRent)
	role = "'renter'"
	dbCur.execute("SELECT * FROM renter  WHERE renteruname = " + userName)
	if (dbCur.rowcount != 0):
		print ("User/renter name already exists; try again.")
	else:
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
	pyLib.banner()
	pyLib.menuSys()

	#Menu loop
	while selection:

		selection = raw_input("\nWhat would you like to do? ")
	
		if selection == '1':
			#Inserting new apartment listing
			print ("Insert new apartment\n")		
			rent = str(raw_input("Enter rent: "))
			rent = pyLib.testNum(re, rent)
			bed = str(raw_input("Enter number of bedrooms: "))
			bed = pyLib.testNum(re, bed)
			bath = str(raw_input("Enter number of bathrooms: "))
			bath = pyLib.testNum(re, bath)
			style = str(raw_input("Enter style - choose from Contemporary, Cottage, Mediterranean, Traditional, Rustic or Retro: "))
			style = '\'' + pyLib.testStyle(style) + '\''
			age = str(raw_input("Enter age of apartment: "))
			age = pyLib.testNum(re, age)
			loc = str(raw_input("Enter location: "))
			loc = '\'' + pyLib.testLoc(loc) + '\''
			status = '\'' + str(raw_input("Enter the rental status of the apartment - (r)ented, or (v)acant: ")) + '\''
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
			minRent = pyLib.testNum(re, minRent)
			maxRent = str(raw_input("Enter maximum rent range: "))
			maxRent = pyLib.testNum(re, maxRent)
			passWord = "'password'"
			role = "'renter'"
			dbCur.execute("SELECT * FROM renter  WHERE renteruname = " + userName)
			if (dbCur.rowcount != 0):
				print ("User/renter name already exists; try again.")
			else:
				pyLib.renterInsert(dbCur, db, userName, locSearch, stySearch, minRent, maxRent)
				pyLib.userInsert(dbCur, db, userName, passWord, role)
				print ("Successfully created profile for " + userName + "; they can sign in with the default password (password).")

		elif selection == '3':
			#Performing an apartment search for a renter
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
			aptNum = pyLib.testNum(re, aptNum)
			currStat = raw_input("Enter the current status of the apartment - (r)ented, or (v)acant: ")
			pyLib.aptStatUpdate(dbCur, db, aptNum, currStat)			

		elif selection == '5':
			#Report generation
			print ("Report\n")
			dbCur.execute("select * from apt where rentalstatus = 'r'")			
			print ("Rented apartments: " + str(dbCur.rowcount) + "\n")			
			tableOut = from_db_cursor(dbCur)
			print(tableOut)

			dbCur.execute("select * from apt where rentalstatus = 'v'")			
			print ("\nVacant apartments: " + str(dbCur.rowcount) + "\n")			
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

	#Print menu/banner
	pyLib.banner()
	pyLib.menuRenter()

	#Menu loop
	while selection2:

		selection2 = raw_input("\nWhat would you like to do? ")

		if selection2 == '1':
			#Apartment search based on renter's profile
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
			newLoc = str(raw_input("Enter location of interest: "))
			newLoc = '\'' + pyLib.testLoc(newLoc) + '\''
			pyLib.usrLocationUpdate(dbCur, db, dbUsr, newLoc)

		elif selection2 == '3':
			print("Update Style")
			newStyle = str(raw_input("Enter style - choose from Contemporary, Cottage, Mediterranean, Traditional, Rustic or Retro: "))
			newStyle = '\'' + pyLib.testStyle(newStyle) + '\''
			pyLib.usrStyleUpdate(dbCur, db, dbUsr, newStyle)
		
		elif selection2 == '4':
			#Updating rent range for renter
			print("Update Rent Values")
			minRent = str(raw_input("Enter minimum rent value: "))
			minRent = pyLib.testNum(re, minRent)
			maxRent = str(raw_input("Enter maximum rent value: "))
			maxRent = pyLib.testNum(re, maxRent)
			pyLib.usrRentUpdate(dbCur, db, dbUsr, minRent, maxRent)

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
