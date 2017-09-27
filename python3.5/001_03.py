#!/usr/bin/env python
# -*- coding: utf-8 -*-
#円周率
#"Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
#という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．

s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
s = s.replace('.', "")
s = s.replace(',', "")
s = s.split()

list = []
for word in s:
    list.append(len(word))

print(list)
