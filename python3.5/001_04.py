#!/usr/bin/env python
# -*- coding: utf-8 -*-
#元素記号
#"Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
#という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，それ以外の単語は先頭に2文字を取り出し，
#取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．

str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
str = str.split()

dict = {}
single = [1, 5, 6, 7, 8, 9, 15, 16, 19]

for element in str:
    if str.index(element) + 1 in single:
        dict[element[:1]] = str.index(element) + 1
    else:
        dict[element[:2]] = str.index(element) + 1

# 原子番号順にソートして print（蛇足）
for k, v in sorted(dict.items(), key=lambda x:x[1]):
    print(k, v)
