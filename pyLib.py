def loginProc(cursor, dataBase, sys, username, password, role):
	cursor.execute("select * from user where username = '" + username + "' and role  = '" + role + "'")
	if (cursor.rowcount == 0):
		print("Login failed!")
		sys.exit();

	else:
		for row in cursor.fetchall():	
			if (row[1] == password):
				print("Login successful.")
			else:
				print("Login failed!")
				sys.exit();

def descApt(cursor):
    print ("Describing the apt table...")
    cursor.execute("describe apt")
    for row in cursor.fetchall():
        print (row)

def descRenter(cursor):
    print ("\nDescribing the renter table...")
    cursor.execute("describe renter")
    for row in cursor.fetchall():
        print (row)

def descUser(cursor):
    print ("\nDescribing the user table...")
    cursor.execute("describe user")
    for row in cursor.fetchall():
        print (row)

def selAllApt(cursor, dataBase):
	cursor.execute("SELECT * from apt")
	for row in cursor.fetchall():
		print (row)

def aptInsert(cursor, dataBase, r, be, ba, sty, aa, lo, sta):
	cursor.execute("INSERT INTO apt (aptnumber,rent,bedrooms,bathrooms,style,aptage,location,rentalstatus) \
					VALUES (NULL," + r + "," + be + "," + ba + "," + sty + "," + aa + "," + lo + "," + sta + ")")
	dataBase.commit()

def renterInsert(cursor, dataBase, uname, loS, styS, minR, maxR):
	cursor.execute("INSERT INTO renter (renteruname,locationsearch,stylesearch,minrent,maxrent) \
					VALUES (" + uname + "," + loS + "," + styS + "," + minR + "," + maxR + ")")
	dataBase.commit()

def userInsert(cursor, dataBase, uname, pword, role):
	cursor.execute("INSERT INTO user (username,password,role) \
					VALUES (" + uname + "," + pword + "," + role + ")")
	dataBase.commit()

def aptStatUpdate(cursor, dataBase, aptNum, currStat):
	cursor.execute("UPDATE apt SET rentalstatus = '" + currStat + "' WHERE aptnumber = " + aptNum)
	dataBase.commit() 

def clearScreen(os):
	os.system('clear')

def menuSys():
	print ("\nApartments!\n")
	print ("1.\tAdd a new property... \
			\n2.\tAdd a new renter... \
			\n3.\tRun apartment search for renter... \
			\n4.\tUpdate status of rental... \
			\n5.\tGenerate rental report... \
			\n99.\tLogout")

def menuRenter():
	print ("\nApartments!\n")
	print ("1.\tSearch for available apartments... \
			\n2.\tUpdate location... \
			\n3.\tUpdate style... \
			\n99.\tLogout")

def menuLogin():
	print ("Login to Apartments!\n")
	print ("1.\tLog in as administrator... \
			\n2.\tLog in as renter... \
			\n3.\tFirst time renter? Create a profile... \
			\n4.\tExit...")
