#!/usr/bin/env python

import socket

hostname = "www.google.com"
port = 80

client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

client.connect((hostname,port))

client.send("GET / HTTP/1.1\r\nHost:google.com\r\n\r\n")

respon = client.recv(4096)

print respon
