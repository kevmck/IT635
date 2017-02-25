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

def aptInsert(cursor, dataBase):
	cursor.execute("INSERT INTO apt VALUES (1, 2203, 2, 2, 'condominium', 80, 'Hackensack', 1)")
	dataBase.commit()

def clearScreen(os):
	os.system('clear')
