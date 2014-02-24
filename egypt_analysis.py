#!/usr/bin/env python

import sys
import time

egyptas = set(['5536', '8452', '24835', '24863', '36992']) # all the egyptian ISP AS numbers

# hints:
withdrawcount = {} # dictionary that maps a time "bucket" (e.g., nearest minute) to a count of BGP withdraws
egyptprefix = set() # set of all the prefixes that are reachable through egyptian ASes

for line in sys.stdin:
    fields = line.strip().split('|')
    if fields[2] == 'A':
        # got a BGP ADD update
        # important fields:
        #   index 5: prefix being announced/added
        #   index 6: a space-separated list of AS numbers through which the prefix can be reached
        pass


    elif fields[2] == 'W':
        # got a BGP WITHDRAW update 
        # important fields:
        #   index 1: timestamp (in seconds)
        #   index 5: prefix being withdrawn
        pass



# to turn a timestamp in seconds into a human readable string, you can use:
# time.asctime(time.gmtime(timestamp))

