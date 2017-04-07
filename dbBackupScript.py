#!/usr/bin/python

import datetime, os

os.system("mysqldump -u root -p apartments > /home/kev/it635/sqlbackup/" + str((datetime.datetime.now().strftime('%Y-%m-%d_%H-%M-%S'))) + ".sql")

print("Database backup complete!\n\nPress any key to continue...")

raw_input()
