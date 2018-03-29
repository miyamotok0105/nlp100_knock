//scala basic.scala

//Scalaのざっくり入門
//https://qiita.com/kitaro_tn/items/6d5336eaf5538404ea61


//コメント====================
/* これもコメント */
/**
 * コメントです
 */

//セミコロン(;)は省略可能

//変数====================
println("変数====================")

//型については、型推論であるため省略可能
var num:Int = 1
var str:String = "abc"
var short:Short = _ // _で初期値が設定される

//定数====================
println("定数====================")
val NUM:Int = 1
var STR:String = "abc"

//制御文====================
println("制御文====================")
//if
if (true) println(1) else println(2)
//while
var i:Int = 1
while(i < 3) { 
  println("Hello Wolrd " + i)
  i += 1
}
//for
for (s <- Array("a", "b", "c")) println(s)
//switch case
var one = 1
one match {
  case 1 => println("one")
  case 2 => println("two")
  case _ => println("other")
}

//関数====================
println("関数====================")

def append_ten(num : Int): Int = {
  return num + 10
}

append_ten(1)
//returnは省略可能

def append_ten_1line(num : Int) = num + 10

append_ten_1line(2)

//クラス・メソッド====================
println("クラス・メソッド====================")

// class名(コンストラクタのパラメータを宣言)
class User(_name : String) {
  def name = _name
}
var user = new User("Tom")
println(user.name) // Tom

//フィールドはvarかvalで定義
//varではsetter/getterの提供、valではgetterのみの提供
//→そりゃそうだよねー
class User2(_name : String, _age : Int) {
  var name = _name
  val age  = _age
}
var user2 = new User2("Tom", 23)
println(user2.name)  // Tom
println(user2.age)   // 23
user2.name = "Bob"   // nameは"Bob"に更新される
user2.age  = 14      // val定義なのでエラーになる

//アクセス修飾子と継承
class User3(_name: String, _age: Int) {
  val name = _name
  val age  = _age

  def agree = println("Hi, I'm " + name)

  def how_old = println("I'm " + fudge_the_count)

  protected def real_age = age // protected メソッド

  private def fudge_the_count = age - 5 // private メソッド
}

// extendsキーワードで継承
class Profile(_name: String, _age: Int) extends User3(_name: String, _age: Int) {

  // 親クラスのメソッドをオーバーライド
  override def agree = println("Hi, I'm " + name + ". I'm going to be " + real_age + " this year")

}

var user3 = new User3("Tom", 42)
user3.agree
user3.how_old

var profile = new Profile("Tom", 42)
profile.agree





