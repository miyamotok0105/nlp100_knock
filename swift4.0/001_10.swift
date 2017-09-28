//10.行数のカウント
//行数をカウントせよ．確認にはwcコマンドを用いよ．

import Foundation
// import SwiftyStringExtension

let s = "GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin16)
These shell commands are defined internally.  Type `help' to see this list.
Type `help name' to find out more about the function `name'.
Use `info bash' to find out more about the shell in general.
Use `man -k' or `info' to find out more about commands not in this list."



print(s.characters.filter { String($0).rangeOfCharacter(from: CharacterSet.newlines) != nil }.count)



// let file_name = "temp.txt"
// if let dir = FileManager.default.urls( for: .documentDirectory, in: .userDomainMask ).first {

//     let path_file_name = dir.appendingPathComponent( file_name )

//     do {

//         let text = try String( contentsOf: path_file_name, encoding: String.Encoding.utf8 )
//         print( text )

//     } catch {                
//         //エラー処理               
//     }            
// }

