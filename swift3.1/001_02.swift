<<<<<<< HEAD
//「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．

let input1 = "パトカー"
let input2 = "タクシー"
let c = zip(input1.characters, input2.characters)
            .map { String($0) + String($1) }
            .reduce("", +)

print(c)
=======
// 「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．

input1 = "パトカー"
input2 = "タクシー"

print(input1.characters)
>>>>>>> ca7105f57bd946942ea67f39238c7d971f9f5d55
