//"Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，それ以外の単語は先頭に2文字を取り出し，取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．

import Foundation
// [1, 5, 6, 7, 8, 9, 15, 16, 19]
let s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
print("[Swift] is contain ", s.contains("Swift"))
print("[now] is contain ", s.contains("Now"))

let condition = [1, 5, 6, 7, 8, 9, 15, 16, 19]
let c = zip(s.components(separatedBy: " ").indices, s.components(separatedBy: " "))

let split = c.filter { key, version in
    condition.contains(key) == true
}
ここむずいなぁ。。。

// .reduce([String: Int]()) { sum, v in
// 	var sum = sum
// 	sum[v.1] = v.0 + 1
// 	return sum
// }

// .filter{ condition.contains($0) ; $1 }
// map{ print($0) ;print(":");print($1) }

// let split = s.components(separatedBy: " ").enumerated()
				// .filter{ condition.contains($0) }

				// .map{ [String: Int]()) { sum, v in
    //             var sum = sum
    //             sum[v.1] = v.0 + 1
    //             return sum
    //             }

				// .reduce([String: Int]()) { sum, v in
    //             var sum = sum
    //             sum[v.1] = v.0 + 1
    //             return sum
    //     		}
print(s)
print(split)




// static func q4(_ input: String, condition: [Int]) -> [String: Int] {
//         return input.components(separatedBy: " ").enumerated()
//             .map { (i, v) in condition.contains(i + 1) ? (i, v[0..<1]!) : (i, v[0..<2]!) }
//             .reduce([String: Int]()) { sum, v in
//                 var sum = sum
//                 sum[v.1] = v.0 + 1
//                 return sum
//         }
//     }


// q4(s, condition)


