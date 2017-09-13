
//http://qiita.com/motokiee/items/cf83b22cb34921580a52


//map:全要素に適用----------

print("map-------------------->")

//「配列」map
let array = [1,2,3,4,5]
let newArray = array.map { $0 * 5 }
print(newArray)

let values = [2.0,4.0,5.0,7.0]
let squares = values.map {$0 * $0}
print(squares)

let str1 = ["Rinda","Cathy"].map{ "Ms." + $0 }
print(str1)

//「ハッシュ」map
let str2 = ["Tokyo":14.0, "Osaka":17.0, "Okinawa":26.0]
let str3 = str2.map { " my home town is " + String($0) + String($1) }
print(str3)


//「ハッシュ」
let celsius = ["Tokyo":14.0, "Osaka":17.0, "Okinawa":26.0]
let fahrenheit = celsius.map { ($0.0, 1.8 * $0.1 + 32) }
print(fahrenheit)

//filter:要素を絞り込む----------

print("fileter-------------------->")
//filter
let array2 = [1,2,3,4,5]
let newArray2 = array2.filter { $0 == 5 }
print(newArray2)

let array10 = [1,2,3,4,5]
let array10_2 = [1,2,3]
let newArray10 = array10.filter { array10_2.contains($0) }
print(newArray10)


//reduce:要素を１つにまとめる----------
//第一引数：初期値
//第二引数：要素に対して行う処理

print("reduce-------------------->")

//「配列」reduce
let array3 = [1,2,3,4,5]
let red1 = array3.reduce(0) { (num1, num2) -> Int in
    num1 + num2
}
print(red1)
print([1, 2, 3].reduce(0) { $0 + $1 })


let array4 = [1,2,3,4,5]
let array4_1 =  array4.reduce(0) { $0 + $1 }  // 15
let array4_2 = array4.reduce(1) { $0 * $1 } // 120
print(array4_1)
print(array4_2)

//http://llcc.hatenablog.com/entry/2015/10/02/235528
struct MyStruct {
   var value: Int
}

let array_mystruct1 = [MyStruct(value: 1), MyStruct(value: 2), MyStruct(value: 3)]
print(array_mystruct1)
let array_mystruct1_result = array_mystruct1.reduce(0) { $0 + $1.value }
print(array_mystruct1_result) // → 6



