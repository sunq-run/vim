#!/usr/bin/python 
# -*- coding: utf-8 -*-
import tweepy

consumer_key = "Ov66n00gKQnG3p7TlwOuckKB8"
consumer_sec = "QJlw8W49Uam24OoSkZIvlO0IYvoAYqu2UaF0wzxEOdQDS7HFXf"
access_token = "4080365772-M7o8O1QuMASB9BHptkN76nZwkVa5AIVhPj75lCn"
access_sec = "i9To9qe2t2NvX7Y68Gz7ucOUvTLWSsKpFctHXzb0QM1c9"


auth = tweepy.OAuthHandler(consumer_key, consumer_sec)
auth.set_access_token(access_token, access_sec)

api = tweepy.API(auth)

def makehtml(tw):
	ret_html = u"""
	<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
		<h2>二郎画像</h2>
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                <h4>二郎関連ツイート</h4>
			""" + tw + u"""
              </div>
              <div class="mdl-card__actions">
                <a href="#" class="mdl-button">Read our features</a>
              </div>
            </div>
            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn1">
              <i class="material-icons">more_vert</i>
            </button>
            <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="btn1">
              <li class="mdl-menu__item">このツイートにいいね</li>
              <li class="mdl-menu__item" disabled>ここの店について調べる</li>
              <li class="mdl-menu__item">チャーシュー</li>
            </ul>
          </section>
"""
        return ret_html

def zirou():
	html = ""
	public_tweets = api.search("二郎")
	for zirotw in public_tweets:
                tw = zirotw.text
		html = html + makehtml(tw)
        return html

