//"Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．


//Stringクラス
//https://developer.apple.com/documentation/swift/string
//NSStringクラス
//https://developer.apple.com/documentation/foundation/nsstring?changes=latest_minor


//https://stackoverflow.com/questions/41705111/swift-string-api-alternate-for-hackerrank
//componentsはFoundationのNSStringの機能なのでimportする必要がある。
import Foundation

let s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
let split = s.components(separatedBy: " ")
				.map{ $0.trimmingCharacters(in: CharacterSet(charactersIn: ",.")).characters.count }
print(split)

//Stringクラスでも書ける
let split2 = s.characters.split(separator: " ").map(String.init)
				.map{ $0.trimmingCharacters(in: CharacterSet(charactersIn: ",.")).characters.count }
print(split2)
