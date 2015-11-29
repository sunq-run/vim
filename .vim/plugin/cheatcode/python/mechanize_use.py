#!/usr/bin/python
import mechanize
br = mechanize.Browser()
br.addheaders = [('User-agent','Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615Fedora/3.0.1-1.fc9 Firefox/3.0.1')]
br.set_handle_robots(False)
br.open('http://www.wechall.net/challenge/time_to_reset/index.php')
br.select_form(nr=2)
br["answer"] = "AAAAAAAA"
respon = br.submit()
print respon.read()
