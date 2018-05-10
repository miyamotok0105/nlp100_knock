
//参考
//https://qiita.com/kitaro_tn/items/6d5336eaf5538404ea61

//クラス===============


//varではsetter/getterの提供、valではgetterのみの提供

class User(_name : String, _age : Int) {
  var name = _name
  val age  = _age
}
var user = new User("Tom", 23)
println(user.name)  // Tom
println(user.age)   // 23
user.name = "Bob"   // nameは"Bob"に更新される
user.age  = 14      // val定義なのでエラーになる

