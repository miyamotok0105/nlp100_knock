//元素記号
//"Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
//という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，それ以外の単語は先頭に2文字を取り出し，
//取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．

import Foundation
// [1, 5, 6, 7, 8, 9, 15, 16, 19]
let s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
print("[Swift] is contain ", s.contains("Swift"))
print("[now] is contain ", s.contains("Now"))

let condition = [1, 5, 6, 7, 8, 9, 15, 16, 19]
let c = zip(s.components(separatedBy: " ").indices, s.components(separatedBy: " "))

let split1 = c.filter { key, version in
    condition.contains(key) == true
}

let split2 = c.filter { key, version in
    condition.contains(key) == false
}

print("base text is : ", s)
print("1文字目の単語：", split1)
print("2文字目の単語：", split2)

print(split1+split2)
