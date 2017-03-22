#Function summaries are commented.

#Login processor
def loginProc(cursor, dataBase, sys, username, password, role):
	cursor.execute("select * from user where username = '" + username + "' and role  = '" + role + "'")
	if (cursor.rowcount == 0):
		print("Login failed!")
		raw_input("Press any key to exit...")
		sys.exit();

	else:
		for row in cursor.fetchall():	
			if (row[1] == password):
				print("Login successful.")
			else:
				print("Login failed!")
				raw_input("Press any key to exit...")
				sys.exit();

#Describe user table
def descApt(cursor):
    print ("Describing the apt table...")
    cursor.execute("describe apt")
    for row in cursor.fetchall():
        print (row)

#Describe renter table
def descRenter(cursor):
    print ("\nDescribing the renter table...")
    cursor.execute("describe renter")
    for row in cursor.fetchall():
        print (row)

#Describe user table
def descUser(cursor):
    print ("\nDescribing the user table...")
    cursor.execute("describe user")
    for row in cursor.fetchall():
        print (row)

#Select all from apt table
def selAllApt(cursor, dataBase):
	cursor.execute("SELECT * from apt")
	for row in cursor.fetchall():
		print (row)

#Insert new apartment
def aptInsert(cursor, dataBase, r, be, ba, sty, aa, lo, sta):
	cursor.execute("INSERT INTO apt (aptnumber,rent,bedrooms,bathrooms,style,aptage,location,rentalstatus) \
					VALUES (NULL," + r + "," + be + "," + ba + "," + sty + "," + aa + "," + lo + "," + sta + ")")
	dataBase.commit()

#Insert new renter
def renterInsert(cursor, dataBase, uname, loS, styS, minR, maxR):
	cursor.execute("INSERT INTO renter (renteruname,locationsearch,stylesearch,minrent,maxrent) \
					VALUES (" + uname + "," + loS + "," + styS + "," + minR + "," + maxR + ")")
	dataBase.commit()

#Insert new user
def userInsert(cursor, dataBase, uname, pword, role):
	cursor.execute("INSERT INTO user (username,password,role) \
					VALUES (" + uname + "," + pword + "," + role + ")")
	dataBase.commit()


#Update status of an apartment
def aptStatUpdate(cursor, dataBase, aptNum, currStat):
	cursor.execute("SELECT * from apt where aptnumber = " + aptNum)
	if (cursor.rowcount == 0):
		print("Apartment does not exist; no changes made.")	
	else:
		cursor.execute("UPDATE apt SET rentalstatus = '" + currStat + "' WHERE aptnumber = " + aptNum)
		dataBase.commit()
		print("Successfully updated status for apartment #" + aptNum + "; set to (" + currStat + ").")

#Update renter's desired location
def usrLocationUpdate(cursor, dataBase, dbUsr, newLoc):
	cursor.execute("UPDATE renter SET locationsearch = " + newLoc + " WHERE renteruname = '" + dbUsr + "'")
	dataBase.commit()
	print("Successfully updated your desired location to " + newLoc + ".")

#Update renter's desired style
def usrStyleUpdate(cursor, dataBase, dbUsr, newStyle):
	cursor.execute("UPDATE renter SET stylesearch = " + newStyle + " WHERE renteruname = '" + dbUsr + "'")
	dataBase.commit()
	print("Successfully updated your desired style to " + newStyle + ".")

#Update renter's desired rent range
def usrRentUpdate(cursor, dataBase, dbUsr, minRent, maxRent):
	cursor.execute("UPDATE renter SET minrent = '" + minRent + "' WHERE renteruname = '" + dbUsr + "'")
	cursor.execute("UPDATE renter SET maxrent = '" + maxRent + "' WHERE renteruname = '" + dbUsr + "'")
	dataBase.commit()
	print("Successfully updated desired rent values. New rent range: $" + minRent + "-$" + maxRent)

#Clear screen
def clearScreen(os):
	os.system('clear')

#Check that the apartment being entered for searching/listing are in Bergen county (to limit scope)
def testLoc(locCheck):
	while locCheck.lower() not in \
	("allendale", "alpine", "bergenfield", "bogota", "carlstadt", "cliffside Park", "closter", "cresskill", "demarest", \
	"dumont", "east rutherford", "edgewater", "elmwood park", "emerson", "englewood", "englewood cliffs", "fair lawn", \
	"fairview", "fort lee", "franklin lakes", "garfield", "glen rock", "hackensack", "harrington park", "hasbrouck heights", \
	"haworth", "hillsdale", "ho ho kus", "leonia", "little ferry", "lodi", "lyndhurst", "mahwah", "maywood", "midland park", \
	"montvale", "moonachie", "new milford", "north arlington", "northvale", "norwood", "oakland", "old tappan", "oradell", \
	"palisades park", "paramus", "park ridge", "ramsey", "ridgefield", "ridgefield park", "ridgewood", "river edge", "river vale", \
	"rochelle park", "rockleigh", "rutherford", "saddle brook", "saddle river", "south hackensack", "teaneck", "tenafly", "teterboro", \
	"upper saddle river", "waldwick", "wallington", "washington township", "westwood", "woodcliff lake", "wood-ridge", "wyckoff"):
		locCheck = raw_input("Enter valid location inside Bergen county: ")

	return locCheck

#Check that apartment style is valid
def testStyle(styleCheck):
	while styleCheck.lower() not in ("contemporary", "cottage", "mediterranean", "traditional", "rustic", "retro"):
		styleCheck = raw_input("Please enter a valid style - Contemporary, Cottage, Mediterranean, Traditional, Rustic, Retro: ")
	
	return styleCheck
	
#Check that numbers input are valid
def testNum(re, num):
	while not re.match("^[0-9]*$", num) or num == "":
		num = raw_input("Enter valid number: ")
	return num

#Administrator's menu
def menuSys():
	#print ("\nApartments!\n")
	print ("1.\tAdd a new property... \
			\n2.\tAdd a new renter... \
			\n3.\tRun apartment search for renter... \
			\n4.\tUpdate status of rental... \
			\n5.\tGenerate rental report... \
			\n99.\tLogout")

#Renter's menu
def menuRenter():
	#print ("\nApartments!\n")
	print ("\n1.\tSearch for available apartments... \
			\n2.\tUpdate location... \
			\n3.\tUpdate style... \
			\n4.\tUpdate minimum/maximum rent... \
			\n99.\tLogout")

#Login menu
def menuLogin():
	print ("Login to Apartments!")
	print ("\n1.\tLog in as administrator... \
			\n2.\tLog in as renter... \
			\n3.\tFirst time renter? Create a profile... \
			\n99.\tExit...")
			
#Menu banner
def banner():
	print(str("                            _                        _       _  "))
	print(str("     /\                    | |                      | |     | | "))
	print(str("    /  \   _ __   __ _ _ __| |_ _ __ ___   ___ _ __ | |_ ___| | "))
	print(str("   / /\ \ | '_ \ / _` | '__| __| '_ ` _ \ / _ \ '_ \| __/ __| | "))
	print(str("  / ____ \| |_) | (_| | |  | |_| | | | | |  __/ | | | |_\__ \_| "))
	print(str(" /_/    \_\ .__/ \__,_|_|   \__|_| |_| |_|\___|_| |_|\__|___(_) "))
	print(str("          | |                                                   "))
	print(str("          |_|                                                   "))
	print(str("                                                                "))
	print(str("                           BERGEN COUNTY                        \n"))
