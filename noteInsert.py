import os, pprint, pyping, sys
from pymongo import MongoClient

print("Testing mLab connection...\n")
r = os.system("ping -q -c 1 ds155820.mlab.com")

#Test connection to mLab before attempting to execute queries.
#This test can be removed before the final, or if it causes unexpected results.
if (r == 0):
	print("\nConnection to mLab successful!\n")
	client = MongoClient('mongodb://admin:password@ds155820.mlab.com:55820/it635')
else:
	print "\nmLab connection failed - check internet connection."
	sys.exit()


db = client.it635
collection = db.IT635_notes

#Insert test data
userName = raw_input("Enter user's name: ")
userApt = raw_input("Enter apartment number: ")
userNote = raw_input("Enter user's notes: ")
insertNote = {"username": userName, "aptnum": userApt, "note": userNote}
insertProc = collection.insert_one(insertNote).inserted_id

#Fetch single item from database
pprint.pprint(collection.find_one())
