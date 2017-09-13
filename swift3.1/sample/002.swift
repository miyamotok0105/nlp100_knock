import Foundation

// var len = 0
// let s = "hfiahfiojoi"
// s.enumerateSubstrings(startIndex, endIndex in: startIndex ..< endIndex, options: .byComposedCharacterSequences) { str, _, _, _ in
//     if str != nil {
//         len += 1
//     }
// }

// print(len)



//https://stackoverflow.com/questions/45365116/use-of-rangeofcharacter-in-swift-3-0
let name = "Michael"
var shortName = name.lowercased()
let vowels = "aeiou"
let vowelSet = CharacterSet(charactersIn: vowels)

let stringSet = shortName
if let range = stringSet.rangeOfCharacter(from: vowelSet, options: String.CompareOptions.caseInsensitive) 
{
    let startIndex = range.lowerBound

    let substring = name.substring(from: range.lowerBound)
    print(substring)
}


//https://ja.stackoverflow.com/questions/29675/%E6%96%87%E5%AD%97%E5%88%97%E3%81%AB%E6%8C%87%E5%AE%9A%E3%81%AE%E3%83%AF%E3%83%BC%E3%83%89%E3%81%8C%E4%BD%95%E5%80%8B%E5%90%AB%E3%81%BE%E3%82%8C%E3%82%8B%E3%81%8B%E3%82%AB%E3%82%A6%E3%83%B3%E3%83%88%E3%81%97%E3%81%9F%E3%81%84
let theString = "林檎を食べた。林檎は美味しかった。林檎が大好き"
let subString = "林檎"
var count = 0
theString.enumerateSubstrings(in: theString.startIndex..<theString.endIndex, options: .byWords){
    str, _, _, _ in
    if let str = str, str == subString {
        count += 1
    }
}
print("\(count)") // 出力：3
