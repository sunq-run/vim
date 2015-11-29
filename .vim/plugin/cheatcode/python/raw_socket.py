#!/usr/bin/python

import socket,sys
from struct import *

try:
	s = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket.IPPROTO_RAW)
except socket.error , msg:
		print 'Socket could not be created. Error Code : ' + str(msg[0]) + ' Message ' + msg[1]
		sys.exit()


def checksum(msg):
       s = 0
     # loop taking 2 characters at a time
       for i in range(0, len(msg), 2):
	         w = ord(msg[i]) + (ord(msg[i+1]) << 8 )
	         s = s + w
						      
       s = (s>>16) + (s & 0xffff);
       s = s + (s >> 16);
							           
       #complement and mask to 4 byte short
       s = ~s & 0xffff
									        
       return s

#print checksum("Hello!") #今は文字数が偶数個の時しか対応してない
#-------------------- ip heder create -------------------
ip_version = 4
ip_header_type = 5 #32bitのセット数 通常optionalは追加されないので 5 (5*32bit)
ip_type_of_service = 0
ip_total_length = 0 #カーネルが埋めてくれる
ip_id = 54321
ip_flagment_offseet = 0 #フラグ再構築
ip_time_to_live = 255
ip_proto = socket.IPPROTO.TCP #IPヘッダの次に続くフィールドのプロトコルを表します
ip_check = 0  #カーネルが埋めてくれる
ip_sorce_addr = socket.inet_aton("192.163.3.6")
ip_dst_addr = socket.inet_aton(socket.gethostbyname('localhost'))
ip_ihl_ver = (ip_ver << 4) + ip_ihl

ip_header = pack('!BB

