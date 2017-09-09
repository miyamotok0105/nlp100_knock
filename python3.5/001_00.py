#!/usr/bin/env python
# -*- coding: utf-8 -*-
#文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．

s = "stressed"
print(s)
print(s[:-1])
print(s[-1::-1])
print(s[::-1])
#文字列の末尾から 1 個ずつさかのぼって先頭まで要素を取りだす
#http://d.hatena.ne.jp/redcat_prog/20111104/1320395840

