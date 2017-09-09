//#「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
let s = "パタトクカシーー"
let c = String(s.characters.enumerated()
    .filter { i, _ in i % 2 == 1 }
    .map { $1 })

print(c)
