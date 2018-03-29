//scala basic.scala

//Scalaのざっくり入門
//https://qiita.com/kitaro_tn/items/6d5336eaf5538404ea61


//オブジェクト====================
println("オブジェクト====================")

object Obj {
  def main(args: Array[String]) {
    println("Hello, World")
  }
}  

//コンパニオンオブジェクト====================
//クラス名と同じ名前をつけたオブジェクトのこと

// class Sample {
//   def main(args: Array[String]) {
//     println("Hello, World")
//   }
// }

// object Sample {
//   def main(args: Array[String]) {
//     println("Hello, World")
//   }
// }

//ファクトリー====================
println("ファクトリー====================")

class Factory private(a: Int) {
  protected var n = a
}

object Factory {
  def apply(a: Int) {
    new Factory(a)
  }
}

Factory.apply(123)
Factory(123)

println(Factory.apply(123))
println(Factory(123))


//トレイト(Trait)
println("トレイト(Trait)====================")




