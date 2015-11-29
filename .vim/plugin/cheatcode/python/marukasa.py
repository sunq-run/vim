#!/usr/bin/python

import stem
import stem.connection
import stem.socket
import sys

if __name__ == '__main__':
	  try:
		      control_socket = stem.socket.ControlPort(port = 9050)
		      stem.connection.authenticate(control_socket)
          except stem.SocketError as exc:
         	      print 'Unable to connect to tor on port 9051: %s' % exc
		      sys.exit(1)
          except stem.connection.AuthenticationFailure as exc:
	              print 'Unable to authenticate: %s' % exc
		      sys.exit(1)

	  print "Issuing 'GETINFO version' query...\n"
  	  control_socket.send('GETINFO version')
	  print control_socket.recv()
