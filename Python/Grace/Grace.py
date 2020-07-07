# This program will print its own source when run.
KID_FILE = "Grace_kid.py"
SOURCE = "# This program will print its own source when run.{0:c}KID_FILE = {1:c}Grace_kid.py{1:c}{0:c}SOURCE = {1:c}{2:s}{1:c}{0:c}MODE = {1:c}w{1:c}{0:c}try:{0:c}    with open(KID_FILE, MODE) as kid:{0:c}        kid.write(SOURCE.format(10, 34, SOURCE)){0:c}except:{0:c}    pass{0:c}"
MODE = "w"
try:
    with open(KID_FILE, MODE) as kid:
        kid.write(SOURCE.format(10, 34, SOURCE))
except:
    pass
