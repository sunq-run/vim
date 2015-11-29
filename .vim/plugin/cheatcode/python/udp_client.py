#!/usr/bin/env python

import socket

hostname = "127.0.0.1"
port = 80

client = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

client.sendto("AAAABBBBCCC",(hostname,port))

data, addr = client.recvform(4096)

print data


