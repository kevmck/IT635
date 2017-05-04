import os, pprint, pyLib, pyping, re, sys
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
	returnData = ""
	un = userName2
	
	if aptNum.lower() == 'a':
		param = {"username": un}
	
	else:
		aptNum = pyLib.testNum(re, aptNum)
		param = {"username": un, "aptnum": aptNum}
	
	resCount = (collection.find(param).count())
	print("\n" + str(resCount) + " note(s) found.")
	
	if (resCount == 0):
		print "\nNo notes found for the apartment number provided."
		return resCount
		
	else:
		for item in collection.find(param):
			apt = str(item.get("aptnum", None))
			note = str(item.get("notes", None))
			returnData += "\nApartment: " + apt + "\nNotes: " + note + "\n"
	
	print(returnData)
	return resCount
		
def noteInsert(userName, userApt):
	findNote = {"username": userName, "aptnum": userApt}
	#insertNote = {"username": userName, "aptnum": userApt, "notes": userNote}
	insertNote = ""
	collection = db.IT635_watchlist
	listCheck = (collection.find(findNote).count())
	
	if (listCheck != 0):
		collection = db.IT635_notes
		noteCount = (collection.find(findNote).count())
		
		if (noteCount != 0):
			print("A note for this apartment already exists; edit or delete the note.")
		
		else:
			userNote = raw_input("Enter notes: ")
			insertNote = {"username": userName, "aptnum": userApt, "notes": userNote}
			insertProc = collection.insert_one(insertNote).inserted_id
			print("\nNew note created for apartment #" + userApt + ".")
	
	else:
		print("\nApartment #" + userApt + " is not on your watchlist; cannot add note.")
		
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
		
def noteList(userName):
	collection = db.IT635_notes
	listNotes = {"username": userName}
	listNotesCount = (collection.find(listNotes).count())
	printList = ""
	count = 1
	print("Current apartments with notes:\n")
	
	if (listNotesCount == 0):
		print("No notes found.")

	else:
		for note in collection.find().sort([("aptnum", 1)]):
			apt = str(note.get("aptnum", None))
			printList += str(count) + ".\t" + apt + "\n"
			count += 1
			
	print(printList)
		
def watchListFetch(userName):

	collection = db.IT635_watchlist
	returnList = ""
	param = {"username": userName}
	resCount = (collection.find(param).count())
	
	if (resCount == 0):
		returnList = "No apartments are currently in your watchlist."
		return returnList
		
	else:
		for item in collection.find().sort([("aptnum", 1)]):
			name = str(item.get("username", None))
			
			if (name == userName):	
				aptnum = str(item.get("aptnum", None))
				returnList = returnList + aptnum + "\n"
	
	return returnList
	
def watchListInsert(userName, userApt):
	collection = db.IT635_watchlist
	insertWatchList = {"username": userName, "aptnum": userApt}
	listCheck = (collection.find(insertWatchList).count())
	
	if (listCheck == 0):
		insertProc = collection.insert_one(insertWatchList).inserted_id
		print("Successfully added Apt. #" + userApt + " to your watchlist.")
		
	else:
		print("This apartment is already on your watchlist.")
	
def watchListDelete(userName, userApt):
	collection = db.IT635_watchlist
	wlDelete = {"username": userName, "aptnum": userApt}
	listCount = (collection.find(wlDelete).count())
	
	if (listCount != 0):
		deleteProc = collection.remove(wlDelete)
		print("\nApartment #" + userApt + " deleted from watchlist successfully.")
	else:
		print("\nApartment #" + userApt + " was not in your watchlist; no changes made.")

#Close connection to mLab.
client.close()
