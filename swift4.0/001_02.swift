//「パトカー」＋「タクシー」＝「パタトクカシーー」
//「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．

let input1 = "パトカー"
let input2 = "タクシー"
let c = zip(input1.characters, input2.characters)
            .map { String($0) + String($1) }
            .reduce("", +)

print(c)
