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
