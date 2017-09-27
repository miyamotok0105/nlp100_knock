#!/usr/bin/env python
# -*- coding: utf-8 -*-
#n-gram
#与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．
#この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．


original = "I am an NLPer"

def ngram(input, n):
    # 文字 n-gram (引数 str)
    l = len(input)
    if type(input) == str:
        input = "$" * (n - 1) + input + "$" * (n - 1)
        for i in range(l + 1):
            print(input[i:i+n])
    # 単語 n-gram (引数 list)
    elif type(input) == list:
        input = ["$"] * (n - 1) + input + ["$"] * (n - 1)
        for i in range(l + 1):
            print(input[i:i+n])

print(original)
print("文字 n-gram")
ngram(original, 2)              # 文字 n-gram:1文字を元にインデックスを作成する方法をユニグラム
original = original.split()
print("単語 n-gram")
ngram(original, 2)              # 単語 n-gram

