//scala 003.scala

//関数===============
//関数作るならクラスも作ってね


val add = new Function2[Int, Int, Int] {
    def apply(x: Int, y: Int): Int = x + y
}

println(add.apply(100, 200))


class Obj(arg1: Int, arg2: Int) {
    def hello(arg: String): Unit = {
        println("hello!!")
    }
}

//コンストラクタとメソッドの引数は合わせること
var obj = new Obj(1, 2)
obj.hello("")


class APrinter() {
    def print(): Unit = {
        println("A")
    }
}
new APrinter().print

//extendsでAPrinterを継承
class BPrinter() extends APrinter {
    override def print(): Unit = {
        println("B")
    }
}
new BPrinter().print

