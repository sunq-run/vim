#!/usr/bin/python
# -*- coding: utf-8 -*-
from bottle import route, run, template, request, post, redirect,view,static_file,url
import data_processing.get_zirou as zirou
#フレームワークの使用メソッド呼び出し
#----------mongodb準備
import pymongo
client = pymongo.MongoClient('localhost', 27017)
db = client.mychat
co = db.megdata
#------------------

@route('/static/:path#.+#', name='static')
def static(path):
    return static_file(path, root='static')

@route('/') #どこかにアクセスして来たら以下のメソッド起動
def index():
    i = ""
    #データベースから全部値をもらってくる
    #for data in co.find():
    #    i = data['meg']  +  '   ' + i
    # name = str(i)
    zirou_sections =  zirou.zirou()
    return template('top',get_url=url,zirou_tw=zirou_sections)

@post('/chat/getmeg') # chat/getmeに送られてくるので受け取ってデータベースに保存
def index():
   print request.forms['say']
   #発言をデータベースに
   print co.insert( { 'meg':request.forms['say'] })
   redirect('/chat', 301)  #登録したらトップページにリダイレクト

    
run(host='localhost', port=8888) #サーバー起動
client.drop_database(db)
#最後にデータベース消去

