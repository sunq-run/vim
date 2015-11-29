#!/usr/bin/env/ python
import ngram

G = ngram.NGram(['joe','joseph','jon','john','sally'])
print G.search("joseph")

