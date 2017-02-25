#!/usr/bin/python

import MySQLdb, os, pyLib, sys

db = MySQLdb.connect(host = "localhost", user = "root", passwd = "Clloyd20", db = "apartments")

dbCur = db.cursor()

#yLib.clearScreen(os)
#pyLib.descApt(dbCur)
#pyLib.aptInsert(dbCur, db)

db.close
