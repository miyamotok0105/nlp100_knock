//与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．
//この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．
import Foundation

let s:String = "I am an NLPer"
let arr:[String] = s.components(separatedBy: " ")
print(arr)

func ngramWord(_ input: String, n: Int) -> [[String]] {
    let words = input.components(separatedBy: " ") + (0..<n-1).map { _ in "" }
    return words.reduce([[String]]()) { sum, word in
        var sum = sum
        var words: [String] = { () -> [String] in
            if let lasts = sum.last?.dropFirst() {
                return Array(lasts)
            }
            return []
        }()
        words = (0..<(n - 1 - words.count)).map { _ in "" } + words
        sum.append(words + [word])
        return sum
    }
}

print(ngramWord(s, n: 2))

