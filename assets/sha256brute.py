#!/bin/python2
import hashlib
#import sha256 #one more shit is here!! Xd XD
import time
import sys
import getopt
sha25_hash = None
pwdfile = None
argv = sys.argv[1:]
try:
    opts, args = getopt.getopt(argv, "H:P:")
except:
    print("Error")
for opt, arg in opts:
    counter = 1
    if opt in ['-H']:
        sha25_hash = arg
    elif opt in ['-P']:
        pwdfile = arg

#counter = 1

#sha25_hash = raw_input("\033[1;35mEnter your hash code here==> \033[0m")
#print "\n"
#pwdfile = raw_input("\033[1;35mEnter word list here (path/list)==> \033[0m")


try:
    pwdfile = open(pwdfile,"r")
except:
    print ("\n\033[1;32m[\033[1;31m!\033[1;32m]\033[1;31minvalid wordlist path!!\033[0m")
    quit()

for password in pwdfile:
    hash_obj = hashlib.sha256(password.strip())
    filesha25 = (hash_obj.hexdigest())
#    filemd5 = hashlib.sha1(mystring.encode())sha1.new(password.strip()).hexdigest()
    start = time.time()
    print "\033[1;34mTrying passowrd %d: %s\033[0m" % (counter, password.strip())

    counter += 1
    end = time.time()
    t_time = (end - start)

    if sha25_hash == filesha25:
        print "\n\033[1;33mPassword Found !! ;) \nPassword is : %s\033[36m" % password
        print "\033[1;32mTime taken=> \033[1;31m", t_time, "seconds\033[0m"
        time.sleep(0.125)
        break


else:
    print "\n\033[1;32m[\033[1;31m!\033[1;32m]\033[1;31mPassword not Found!! :(\033[0m"