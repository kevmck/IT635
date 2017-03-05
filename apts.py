#!/usr/bin/python

import getpass, MySQLdb, os, pyLib, sys

#Database login and interface instanciator (cursor)
db = MySQLdb.connect(host = "localhost", user = "root", passwd = "Clloyd20", db = "apartments")
dbCur = db.cursor()

#Login procedure
pyLib.menuLogin()
logChoice = str(raw_input ("\nWhat would you like to do? "))
while logChoice not in ("1", "2", "3", "4"):
	logChoice = raw_input ("Please enter a valid option: ")

dbRole = None

if logChoice == '1':
	dbUsr = str(raw_input("\nUsername: "))
	dbPass = getpass.getpass("Password:")
	dbRole = "administrator"
	pyLib.loginProc(dbCur, db, sys, dbUsr, dbPass, dbRole)

elif logChoice == '2':
	dbUsr = str(raw_input("\nUsername: "))
	dbPass = getpass.getpass("Password:")
	dbRole = "renter"
	pyLib.loginProc(dbCur, db, sys, dbUsr, dbPass, dbRole)

elif logChoice == '3':
	#Inserting new renter/user		
	userName = '\'' + str(raw_input("Enter username: ")) + '\''
	passWord = '\'' + getpass.getpass("Enter password: ") + '\''
	locSearch = '\'' + str(raw_input("Enter location of interest: ")) + '\''
	stySearch = '\'' + str(raw_input("Enter desired style: ")) + '\''
	minRent = str(raw_input("Enter minimum rent range: "))
	maxRent = str(raw_input("Enter maximum rent range: "))
	role = "'renter'"
	#pyLib.renterInsert(dbCur, db, userName, locSearch, stySearch, minRent, maxRent)
	pyLib.userInsert(dbCur, db, userName, passWord, role)
	print ("Successfully created your profile, " + userName + ". Please log in as a renter with your new credentials.")
	sys.exit()

elif logChoice == '4':
	print ("Exiting...")
	sys.exit()

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
		
		style = '\'' + str(raw_input("Enter style - choose from contemporary, cottage, mediterranean, traditional, rustic or retro: ")) + '\''
		while style not in ("contemporary", "cottage", "mediterranean", "traditional", "rustic", "retro"):
			style = raw_input("Please enter a valid style: ")
		else:
			style = '\'' + style + '\''	
		
		age = str(raw_input("Enter age of apartment: "))
		loc = '\'' + str(raw_input("Enter location: ")) + '\''
		status = '\'' + str(raw_input("Enter the rental status: ")) + '\''
		pyLib.aptInsert(dbCur, db, rent, bed, bath, style, age, loc, status)
		print ("Successfully created new apartment!")

	elif selection == '2':
		#Inserting new renter
		print ("Insert new renter\n")		
		userName = '\'' + str(raw_input("Enter username: ")) + '\''
		locSearch = '\'' + str(raw_input("Enter location of interest: ")) + '\''
		stySearch = '\'' + str(raw_input("Enter desired style: ")) + '\''
		minRent = str(raw_input("Enter minimum rent range: "))
		maxRent = str(raw_input("Enter maximum rent range: "))
		pyLib.renterInsert(dbCur, db, userName, locSearch, stySearch, minRent, maxRent)
		print ("Successfully created profile for " + userName + "!")

	elif selection == '3':
		print ("Apartment search for renter\n")
		
	elif selection == '4':
		#Updating rental status of an apartment
		print ("Update status of rental\n")
		aptNum = raw_input("Enter the apartment number to update: ")
		currStat = raw_input("Enter the current status of the apartment - (r)ented or (v)acant: ")
		pyLib.aptStatUpdate(dbCur, db, aptNum, currStat)			
		print("Successfully updated status for apartment #" + aptNum + "; set to (" + currStat + ").")

	elif selection == '5':
		print ("Generate rental report\n")

	elif selection == "99":
		db.close
		print("Exiting...")
		sys.exit()

	elif selection != "":
		print("\nPlease enter a valid option.")

	elif (len(selection) == 0):
		selection = True
		print("Try again!")

input()
