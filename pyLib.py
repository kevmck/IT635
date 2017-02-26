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

def aptInsert(cursor, dataBase, r, be, ba, sty, aa, lo, sta):
	cursor.execute("INSERT INTO apt (aptnumber,rent,bedrooms,bathrooms,style,aptage,location,rentalstatus) \
					VALUES (NULL," + r + "," + be + "," + ba + "," + sty + "," + aa + "," + lo + "," + sta + ")")
	dataBase.commit()

def renterInsert(cursor, dataBase, uname, loS, styS, minR, maxR):
	cursor.execute("INSERT INTO renter (renteruname,locationsearch,stylesearch,minrent,maxrent) \
					VALUES (" + uname + "," + loS + "," + styS + "," + minR + "," + maxR + ")")
	dataBase.commit()

def clearScreen(os):
	os.system('clear')
