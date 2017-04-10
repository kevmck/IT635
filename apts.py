#!/usr/bin/python

import getpass, MySQLdb, os, pyLib, re, saltLib, sys
from prettytable import from_db_cursor

#Set terminal name/size
sys.stdout.write(b'\33]0;Apartments!\a')
os.system("printf '\033[8;30;105t'")

#Database login and interface instanciator (cursor)
db = MySQLdb.connect(host = "localhost", user = "it635", passwd = "password", db = "apartments")
dbCur = db.cursor()

#Print login menu
os.system("clear")
pyLib.banner()
pyLib.menuLogin()

#Login procedure
logChoice = str(raw_input ("\nWhat would you like to do? "))
while logChoice not in ("1", "2", "3", "99"):
	logChoice = raw_input ("Please enter a valid option: ")

dbRole = None

if logChoice == '1':
	#Administrator login
	dbUsr = str(raw_input("Username: "))
	dbPass = getpass.getpass("Password:")
	dbPass = saltLib.getHash(dbUsr, dbPass)
	dbRole = "administrator"
	pyLib.loginProc(dbCur, db, sys, dbUsr, dbPass, dbRole)

elif logChoice == '2':
	#Renter login
	dbUsr = str(raw_input("Username: "))
	dbPass = getpass.getpass("Password:")
	dbPass = saltLib.getHash(dbUsr, dbPass)
	dbRole = "renter"
	pyLib.loginProc(dbCur, db, sys, dbUsr, dbPass, dbRole)

elif logChoice == '3':
	#Inserting new renter/user		
	userName = '\'' + str(raw_input("Enter username: ")) + '\''
	
	pw1 = getpass.getpass("Password: ")
	pw2 = getpass.getpass("Confirm: ")

	while (pw1 != pw2):
		print("Passwords do not match; try again.")
		pw1 = getpass.getpass("Password: ")
		pw2 = getpass.getpass("Confirm: ")

		
	passWord = '\'' + pw1 + '\''
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
		passWord = '\'' + saltLib.setHash(userName[1:(int(len(userName) -1))], pw1) + '\''
		pyLib.renterInsert(dbCur, db, userName, locSearch, stySearch, minRent, maxRent)
		pyLib.userInsert(dbCur, db, userName, passWord, role)
		print ("Successfully created your profile, " + userName + ". Please log in as a renter with your new credentials.")
	print ("Press any key to continue...")
	raw_input()	
	sys.exit()

elif logChoice == '99':
	#Cleanup and exit from login menu
	dbCur.close()
	db.close()	
	print ("Exiting...")
	sys.exit()

if logChoice == '1':
	#Value that controls menu navigation
	selection = True

	#Print menu
	os.system("clear")
	pyLib.banner()
	pyLib.menuSys()
	print("\n\nWelcome to Apartments!, " + dbUsr + ".")

	#Menu loop
	while selection:

		selection = raw_input("\nWhat would you like to do? Type (m)enu to display options: ")
	
		if selection == '1':
			#Inserting new apartment listing
			os.system("clear")
			pyLib.banner()
			print ("Insert New Apartment\n")		
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
			os.system("clear")
			pyLib.banner()
			print ("Insert New Renter\n")		
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
			os.system("clear")
			pyLib.banner()
			print ("Apartment Search For Renter\n")
			renterName = str(raw_input("Enter the renter's username: "))
			dbCur.execute("select * from renter where renteruname = '" + renterName + "'")
			if (dbCur.rowcount == 0):
				print ("User " + renterName + " does not exist. No results to show.")
			else:
				for row in dbCur.fetchall():
					fetchLoc = row[1]
					fetchStyle = row[2]
					fetchMinRent = str(row[3])
					fetchMaxRent = str(row[4])
					
				dbCur.execute("select * from apt where location = '" + fetchLoc + "' and style = '" + fetchStyle + \
									"' and rent >= " + fetchMinRent + " and rent <= " + fetchMaxRent)
									
				if (dbCur.rowcount == 0):
					print ("No results!")
				else:
					print("\n" + str(dbCur.rowcount) + " matching apartment(s) found:\n")
					tableOut = from_db_cursor(dbCur)
					print(tableOut)
		
		elif selection == '4':
			#Updating rental status of an apartment
			os.system("clear")
			pyLib.banner()
			print ("Update Status of Rental\n")
			aptNum = raw_input("Enter the apartment number to update: ")
			aptNum = pyLib.testNum(re, aptNum)
			currStat = raw_input("Enter the current status of the apartment - (r)ented, or (v)acant: ")
			pyLib.aptStatUpdate(dbCur, db, aptNum, currStat)			

		elif selection == '5':
			#Report generation
			os.system("clear")
			pyLib.banner()
			print ("Report\n")
			
			dbCur.execute("select * from apt where rentalstatus = 'r'")
			rented = str(dbCur.rowcount)
			
			dbCur.execute("select * from apt where rentalstatus = 'v'")
			vacant = str(dbCur.rowcount)
			
			print ("Number of rented apartments - " + rented)
			print ("Number of vacant apartments - " + vacant)
			print ("Total number of apartments in system - " + str((int(rented) + int(vacant))))
			
			reportExp = raw_input("\nViewing summarized report. Would you like a detailed report? Y/N: ")
			
			while reportExp not in 'YyNn' or reportExp == "":
				reportExp = raw_input("Enter Y/N: ")
			
			if reportExp.lower() == "y":	
				dbCur.execute("select * from apt where rentalstatus = 'r'")			
				print ("\nRented apartments: " + str(dbCur.rowcount) + "\n")			
				tableOut = from_db_cursor(dbCur)
				print(tableOut)

				dbCur.execute("select * from apt where rentalstatus = 'v'")			
				print ("\nVacant apartments: " + str(dbCur.rowcount) + "\n")			
				tableOut = from_db_cursor(dbCur)
				print(tableOut)	
		
		elif selection.lower() == 'm':
			#Display menu
			os.system("clear")
			pyLib.banner()
			pyLib.menuSys()
			
		elif selection == "99":
			#Cleanup and exit
			dbCur.close()
			db.close()
			print("Exiting...")
			sys.exit()

		elif selection != "":
			print("\nPlease enter a valid option. Type (m)enu to display options:")

		elif (len(selection) == 0):
			selection = True
			print("Try again! Type (m)enu to display options:")

else:
	#Value that controls menu navigation
	selection2 = True

	#Print menu/banner
	os.system("clear")
	pyLib.banner()
	pyLib.menuRenter()
	print("\n\nWelcome to Apartments!, " + dbUsr + ".")

	#Menu loop
	while selection2:

		selection2 = raw_input("\nWhat would you like to do? Type (m)enu to display options: ")

		if selection2 == '1':
			#Apartment search based on renter's profile
			os.system("clear")
			pyLib.banner()
			print("\nSearch Results:\n")
		
			dbCur.execute("select * from renter where renteruname = '" + dbUsr + "'")
			for row in dbCur.fetchall():
				fetchLoc = row[1]
				fetchStyle = row[2]
				fetchMinRent = str(row[3])
				fetchMaxRent = str(row[4])
				
			dbCur.execute("select * from apt where location = '" + fetchLoc + "' and style = '" + fetchStyle + \
								"' and rent >= " + fetchMinRent + " and rent <= " + fetchMaxRent)					
			
			if (dbCur.rowcount == 0):
				print ("No results!")
			else:
				print("\n" + str(dbCur.rowcount) + " matching apartment(s) found:\n")
				tableOut = from_db_cursor(dbCur)
				print(tableOut)
					
		elif selection2 == '2':
			#Updating renter's preferred loation
			os.system("clear")
			pyLib.banner()
			print("Update Location\n")
			newLoc = str(raw_input("Enter location of interest: "))
			newLoc = '\'' + pyLib.testLoc(newLoc) + '\''
			pyLib.usrLocationUpdate(dbCur, db, dbUsr, newLoc)

		elif selection2 == '3':
			#Updating renter's preferred apartment style
			os.system("clear")
			pyLib.banner()
			print("Update Style\n")
			newStyle = str(raw_input("Enter style - choose from Contemporary, Cottage, Mediterranean, Traditional, Rustic or Retro: "))
			newStyle = '\'' + pyLib.testStyle(newStyle) + '\''
			pyLib.usrStyleUpdate(dbCur, db, dbUsr, newStyle)
		
		elif selection2 == '4':
			#Updating rent range for renter
			os.system("clear")
			pyLib.banner()
			print("Update Rent Values\n")
			minRent = str(raw_input("Enter minimum rent value: "))
			minRent = pyLib.testNum(re, minRent)
			maxRent = str(raw_input("Enter maximum rent value: "))
			maxRent = pyLib.testNum(re, maxRent)
			pyLib.usrRentUpdate(dbCur, db, dbUsr, minRent, maxRent)
			
		elif selection2.lower() == 'm':
			#Display menu
			os.system("clear")
			pyLib.banner()
			pyLib.menuRenter()

		elif selection2 == '99':
			#Cleanup and exit
			dbCur.close()			
			db.close()
			print("Exiting...")
			sys.exit()

		elif selection2 != "":
			print("\nPlease enter a valid option. Type (m)enu to display options:")

		elif (len(selection2) == 0):
			selection2 = True
			print("Try again! Type (m)enu to display options:")
