#!/usr/bin/env python

import ngram

text = u'dirlist'
index = ngram.NGram(N=4)
for term in index.ngrams(index.pad(text)):
    print term
