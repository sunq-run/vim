#!/usr/bin/env python 

import socket

HOST = '127.0.0.1'
PORT = 9999

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.bind((HOST, PORT))

s.listen(1)

conn, addr = s.accept()

print 'Connected by', addr
while True:
    data = conn.recv(1024)
    if len(data) == 0:
        break
    conn.send(data)

conn.close()
