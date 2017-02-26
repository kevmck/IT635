#!/usr/bin/python

import getpass, MySQLdb, os, pyLib, sys

db = MySQLdb.connect(host = "localhost", user = "root", passwd = "Clloyd20", db = "apartments")

dbCur = db.cursor()

#pyLib.clearScreen(os)
#pyLib.descApt(dbCur)

#Login procedure
dbUsr = str(raw_input("Username: "))
dbPass = getpass.getpass("Password:")
pyLib.loginProc(dbCur, db, dbUsr, dbPass)

"""
#Inserting new apartment listing
rent = str(raw_input("Enter rent: "))
bed = str(raw_input("Enter number of bedrooms: "))
bath = str(raw_input("Enter number of bathrooms: "))
style = '\'' + str(raw_input("Enter style - choose from contemporary, cottage, mediterranean, traditional, rustic or retro: ")) + '\''
age = str(raw_input("Enter age of apartment: "))
loc = '\'' + str(raw_input("Enter location: ")) + '\''
status = '\'' + str(raw_input("Enter the rental status: ")) + '\''
pyLib.aptInsert(dbCur, db, rent, bed, bath, style, age, loc, status)

#Inserting new renter
userName = '\'' + str(raw_input("Enter username: ")) + '\''
locSearch = '\'' + str(raw_input("Enter location of interest: ")) + '\''
stySearch = '\'' + str(raw_input("Enter desired style: ")) + '\''
minRent = str(raw_input("Enter minimum rent range: "))
maxRent = str(raw_input("Enter maximum rent range: "))
pyLib.renterInsert(dbCur, db, userName, locSearch, stySearch, minRent, maxRent)
"""

db.close
