#!/usr/bin/python

import random
source_str = 'abcdefghijklmnopqrstuvwxyz=~|_?*><%$#!'
def flagen():
	flag = ""
	for i in range(30):
		flag = flag + random.choice(source_str)

	flag = "FLAG_" + "{" + flag + "}"
	print flag

for i in range(5000):
	flagen()

