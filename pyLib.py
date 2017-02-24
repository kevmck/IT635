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
