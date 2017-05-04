#!/usr/bin/python

#This script creates an SQL backup and completes backup rotation (max. 5 files).

import datetime, os, sys

#SQL dump
os.system("mysqldump -u root -pClloyd20 apartments > /home/kev/it635/cronbackups/" + str((datetime.datetime.now().strftime('%Y-%m-%d_%H-%M-%S'))) + ".sql")

#Defines the path of the backup folder in order to list file names and count number of files.
path = "/home/kev/it635/cronbackups"
dirs = os.listdir(path)
files = []
fileCount = os.system("find /home/kev/it635/cronbackups -maxdepth 1 -type f | wc -l")

#Adds each file found to a dictionary.
for i in dirs:
	files.append(i)

#Sorts dictionary in descending order.
files.sort()

#Removes the file at index [0] of dictionary, which, based on my
#naming convention, will automatically be the oldest file.
if len(files) > 5:
	os.system("rm -rf /home/kev/it635/cronbackups/" + files[0])
