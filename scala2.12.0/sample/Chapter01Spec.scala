import scala.annotation.tailrec
import org.scalatest.FunSpec

//https://github.com/NomadBlacky/scala_samples/tree/master/src/test/scala/org/nomadblacky/scala/samples/nlp100

override def suiteName: String = "言語処理100本ノック 第1章: 準備運動"

it("00. 文字列の逆順") {
  // 文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．
  "stressed".reverse shouldBe "desserts"
}

it("01. 「パタトクカシーー」") {
  // 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
  val text = "パタトクカシーー"

  // A01
  val result = text
    .zipWithIndex
    .collect {
      case (c, i) if i % 2 == 0 => c
    }
    .mkString
  result shouldBe "パトカー"

  // A02
  val result2 =
    for {
      (c,i) <- text.zipWithIndex if i % 2 == 0
    } yield c
  result2.mkString shouldBe "パトカー"

  // A03
  val result3 =
    text.foldLeft(("", true)) { case ((acc, b), c) =>
      val str = if (b) acc + c else acc
      (str, !b)
    }._1
  result3 shouldBe "パトカー"
}

it("02. 「パトカー」＋「タクシー」＝「パタトクカシーー」") {
  // 「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．
  val str1 = "パトカー"
  val str2 = "タクシー"
  val expect = "パタトクカシーー"

  // A01
  val result = (str1 zip str2)
    .flatMap { case (c1,c2) => Seq(c1, c2) }
    .mkString
  result shouldBe expect

  // A02
  def fn(s1: String, s2: String): String = {
    @tailrec def tmp(c1: List[Char], c2: List[Char], s: String): String = {
      if (c1.isEmpty)
        s + c2.mkString
      else if (c2.isEmpty)
        s + c1.mkString
      else
        tmp(c1.tail, c2.tail, s + c1.head + c2.head)
    }
    tmp(s1.toList, s2.toList, "")
  }
  val result2 = fn(str1, str2)
  result2 shouldBe expect

  // A03
  val result3 = "パトカー".zipWithIndex.foldLeft("") { (acc, t) =>
    val y = "タクシー".charAt(t._2)
    acc + t._1 + y
  }.mkString
  result3 shouldBe expect

  // A04
  val result4 = (str1 zip str2).foldLeft("") {
    case (acc, (c1, c2)) => acc + c1 + c2
  }
  result4 shouldBe expect

  // A05
  val result5 = "パトカー".foldLeft[(String, String)]("", "タクシー") {
    case ((acc, rest), c) =>
      (acc + c + rest.head, rest.tail)
  }._1
  result5 shouldBe expect

  // A06
  def fn2(s1: String, s2: String): String = {
    @tailrec
    def tmp(c1: List[Char], c2: List[Char], s: String): String = {
      (c1.isEmpty, c2.isEmpty) match {
        case (true, _) => s + c2.mkString
        case (_, true) => s + c1.mkString
        case _ => tmp(c1.tail, c2.tail, s + c1.head + c2.head)
      }

    }
    tmp(s1.toList, s2.toList, "")
  }
  val result6 = fn2(str1, str2)
  result6 shouldBe expect
}