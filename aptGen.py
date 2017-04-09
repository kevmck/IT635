#!/usr/bin/python

import MySQLdb, pyLib, random, sys

db = MySQLdb.connect(host = "localhost", user = "it635", passwd = "password", db = "apartments")
dbCur = db.cursor()

location = ("Allendale", "Alpine", "Bergenfield", "Bogota", "Carlstadt", "Cliffside Park", "Closter", "Cresskill", "Demarest", "Dumont", \
			"East Rutherford", "Edgewater", "Elmwood Park", "Emerson", "Englewood", "Englewood Cliffs", "Fair Lawn", "Fairview", "Fort Lee", \
			"Franklin Lakes", "Garfield", "Glen Rock", "Hackensack", "Harrington Park", "Hasbrouck Heights", "Haworth", "Hillsdale", "Ho Ho Kus", \
			"Leonia", "Little Ferry", "Lodi", "Lyndhurst", "Mahwah", "Maywood", "Midland Park", "Montvale", "Moonachie", "New Milford", \
			"North Arlington", "Northvale", "Norwood", "Oakland", "Old Tappan", "Oradell", "Palisades Park", "Paramus", "Park Ridge", "Ramsey", \
			"Ridgefield", "Ridgefield Park", "Ridgewood", "River Edge", "River Vale", "Rochelle Park", "Rockleigh", "Rutherford", "Saddle Brook",
			"Saddle River", "South Hackensack", "Teaneck", "Tenafly", "Teterboro", "Upper Saddle River", "Waldwick", "Wallington", "Washington Township",
			"Westwood", "Woodcliff Lake", "Wood-Ridge", "Wyckoff")

styles = ("contemporary", "cottage", "mediterranean", "traditional", "rustic", "retro")

loops = raw_input("# of apts to generate: ")

for i in range (int(loops)):
	rent = str(random.randint(90, 550)*10)
	bed = str(random.randint(1, 4))

	if (bed > 1):
		x = int(bed)
		bath = str(random.randint(1, x))
	else:
		bath = ('1')

	style = "'" + styles[random.randint(0, 5)] + "'"
	age = str(random.randint(10, 87))
	loc = "'" + location[random.randint(0, 69)] + "'"
	
	statRan = random.randint(0, 1)
	if statRan == 0:
		status = "'r'"
	else:
		status = "'v'"
	
	pyLib.aptInsert(dbCur, db, rent, bed, bath, style, age, loc, status)
	
db.close()
print("Complete.")
sys.exit()
