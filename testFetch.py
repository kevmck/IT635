import mongoLib

userName = raw_input("Enter user name: ")
data = mongoLib.fetch(userName)

print(data)


