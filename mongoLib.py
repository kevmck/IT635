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

def noteFetch(userName2, aptNum):
	collection = db.IT635_notes
	#returnData = ""
	param = {"username": userName2, "aptnum": aptNum}
	resCount = (collection.find(param).count())
	print(resCount)
	
	if (resCount == 0):
		print "No notes found for the apartment number provided."
		#return returnData
		
	else:
		for item in collection.find(param):
			apt = str(item.get("aptnum", None))
			note = str(item.get("notes", None))
			returnData = "Apartment: " + apt + "\nNotes: " + note + "\n\n"
	
	print(returnData)
	
def noteInsert(userName, userApt, userNote):
	collection = db.IT635_notes
	findNote = {"username": userName, "aptnum": userApt}
	insertNote = {"username": userName, "aptnum": userApt, "note": userNote}
	noteCount = (collection.find(findNote).count())
	
	if (noteCount != 0):
		print("A note for this apartment already exists.\nEdit or delete the note.")
	else:
		insertProc = collection.insert_one(insertNote).inserted_id
		print("New note created for apartment #" + userApt + ".")
		
def noteUpdate(userName, userApt, userNotes):
	collection = db.IT635_notes
	updateNote = {"username": userName, "aptnum": userApt}
	noteContents = {"username": userName, "aptnum": userApt, "notes": userNotes}
	noteCount = (collection.find(updateNote).count())
	
	if (noteCount != 0):
		updateProc = collection.replace_one(updateNote, noteContents)
		print("Selected note updated successfully.")
	else:
		print("No notes found for selected apartment; no updates made.")
	
def noteDelete(userName, userApt):
	collection = db.IT635_notes
	deleteNote = {"username": userName, "aptnum": userApt}
	noteCount = (collection.find(deleteNote).count())
	
	if (noteCount != 0):
		deleteProc = collection.remove(deleteNote)
		print("Selected note deleted successfully.")
	else:
		print("No notes found for selected apartment.")
	
def watchListInsert(userName, userApt):
	collection = db.IT635_watchlist
	insertWatchList = {"username": userName, "aptnum": userApt}
	listCheck = (collection.find(insertWatchList).count())
	
	if (listCheck == 0):
		insertProc = collection.insert_one(insertWatchList).inserted_id
		print("Successfully added Apt. # " + userApt + " to your watchlist.")
		
	else:
		print("This apartment is already on your watchlist.")
		
def watchListFetch(userName):

	collection = db.IT635_watchlist
	returnList = ""
	param = {"username": userName}
	resCount = (collection.find(param).count())
	count = 1
	
	if (resCount == 0):
		returnList = "No apartments are currently in your watchlist."
		return returnList
		
	else:
		for item in collection.find().sort([("aptnum", 1)]):
			name = str(item.get("username", None))
			
			if (name == userName):	
				aptnum = str(item.get("aptnum", None))
				returnList = returnList + str(count) + ". " + aptnum + "\n"
				count += 1
	
	return returnList
	
def watchListDelete(userName, userApt):
	collection = db.IT635_watchlist
	wlDelete = {"username": userName, "aptnum": userApt}
	listCount = (collection.find(wlDelete).count())
	
	if (listCount != 0):
		deleteProc = collection.remove(wlDelete)
		print("Selected apartment deleted from watchlist successfully.")
	else:
		print("This apartment was not in your watchlist; no changes made.")

#Close connection to mLab.
client.close()
