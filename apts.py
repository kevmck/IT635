#!/usr/bin/python

import MySQLdb
import pyLib

db = MySQLdb.connect(host = "localhost", user = "root", passwd = "Clloyd20", db = "apartments")

dbCur = db.cursor()

pyLib.descApt(dbCur)

db.close
