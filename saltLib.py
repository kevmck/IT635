import bcrypt, ConfigParser, hashlib

#Processes passwords based on users' password and their previously assigned salts.
def getHash(user, pw):

	config = ConfigParser.ConfigParser()
	config.read('salts.cfg')

	preSalt = config.get(user, 'pre')
	postSalt = config.get(user, 'post')

	passwd = preSalt + pw + postSalt

	hash_object = hashlib.sha512(str(passwd))
	hex_dig = hash_object.hexdigest()
	pw = hex_dig
	
	return pw
	
#Generates a salted hash based on users' password and randomly generated salts.
def setHash(user, pw):

	config = ConfigParser.RawConfigParser()

	preSalt = str(bcrypt.gensalt())
	postSalt = str(bcrypt.gensalt())

	passwd = preSalt + pw + postSalt

	config.add_section(str(user))
	config.set(str(user), 'pre', preSalt)
	config.set(str(user), 'post', postSalt)

	with open ('salts.cfg', 'ab') as configfile:
		config.write(configfile)
	

	hash_object = hashlib.sha512(str(passwd))
	hex_dig = hash_object.hexdigest()
	pw = hex_dig
	
	return pw
