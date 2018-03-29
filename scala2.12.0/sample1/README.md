
# 対話モードで実行

参考    
https://dwango.github.io/scala_text/basic.html    




```
sbt console
//printlnを使用
println("Hello, World!")
//型を表示
//str
"Hello, World!"
//int
0xff
//double
1e308
//long
9223372036854775807L
//error
9223372036854775808L
//error
9223372036854775807
//double
922337203685477580.7
//bool
1.00000000000000000001 == 1
//簡単な計算
1 + 2
2 * 2
4 / 2
4 % 3
//浮動小数点
1.0+2.0
2.0*2.0
//変数の基本
//varはあまり使わずvalのみでプログラミングします。
//コンパイラが型推論する
val x = 3 * 2
var x = 3 * 3
x = "Hello, World!" //error
//型を明示的に書くこともできる
val x: Int = 3 * 3

//終了
:quit
```





