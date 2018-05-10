//scala 004.scala

//無名関数===============

class Obj() {
    def method1(): Unit = {
        println("method1")
    }
    def method2: Int => Int = {
        (i: Int) => i * 2
    }
    
    //無名関数たち
    val f1 = (i: Int) => i * 2
    val f2: Int => Int = (i) => i * 2
    val f3: Int => Int = i => i * 2

    val fPrint = () => println("hello world!")
}

var obj = new Obj()
obj.method1

println(obj.method2(1))

println(obj.f1(1))
println(obj.f2(1))
println(obj.f3(1))

println(obj.fPrint())



