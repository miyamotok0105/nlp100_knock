// 「パタトクカシーー」
//#「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
let s = "パタトクカシーー"

s.characters.enumerated().forEach() {
	print($0)
	print($1)
}

//filter
let array = [1,2,3,4,5]
let newArray = array.filter { $0 < 3 }
print(newArray)

//クロージャ：ラムダ的なやつ
//http://hajihaji-lemon.com/smartphone/swift/%E3%82%AF%E3%83%AD%E3%83%BC%E3%82%B8%E3%83%A3%E3%81%AE%E4%BD%BF%E3%81%84%E6%96%B9/
let test = {(price:Int, number:Int) -> Int in
    price * number
}
print(test(100,3))

//クロージャを定義してfilter
let hairetsu = [100, 200, 300, 400]
var test2:(Int) -> Bool
test2 = {(number:Int) -> Bool in
          number%3 == 0
       }
print(hairetsu.filter(test2))

//クロージャを引数にメソッド実行
let hairetsu2 = [100, 200, 300, 400]
print(hairetsu2.filter({ $0 % 3 == 0 }))


//todo:調べる
let c = String(s.characters.enumerated()
    .filter { i, _ in i % 2 == 1 }
    .map { $1 })
print(c)

