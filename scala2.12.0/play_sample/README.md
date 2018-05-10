

# playを動かすところ

```
//プロジェクト作る
sbt new playframework/play-scala-seed.g8
//gradle消す
rm -rf build.gradle gradle/ gradlew.bat
//runする
sbt run
```

んで動く    

http://localhost:9000/    


下記を追記    


```scala:HomeController

  def sample() = Action { implicit request: Request[AnyContent] =>
    Ok("sample").as(HTML)
  }

  def get(id: Long) = Action { implicit request: Request[AnyContent] =>
    Ok(id.toString())

  }

  def jsonSample () = Action { implicit request: Request[AnyContent] =>
    import play.api.libs.json._
    val json = Json.obj(
      fields = "key" -> "value"
    )

    Ok(json)

  }
```

下記も追加    

```:route
GET     /sample                     controllers.HomeController.sample
GET     /:id                        controllers.HomeController.get(id: Long)
GET     /json/json-sample           controllers.HomeController.jsonSample
```

アクセス    

```
http://localhost:9000/2
http://localhost:9000/sample
http://localhost:9000/json/json-sample
```




# 環境構築から動かすまで

```
sbt new playframework/play-scala-seed.g8
```

gradleとbuild.sbtが入ってる。scalaではsbtを主に使うのでgradleを消す。    

```
rm -rf build.gradle gradle/ gradlew.bat
```

InteliJをインストール    
https://www.jetbrains.com/idea/download/#section=mac    


Giter8をインストール    

```
brew update && brew install giter8
```

playを動かす    

```
sbt run
```

アクセスする    


```
http://localhost:9000/1
http://localhost:9000/2
http://localhost:9000/json/json-sample
```


- ライブラリを増やしたい    

ここから欲しいライブラリを取る    
https://mvnrepository.com/    

build.sbtにコピッってくる

インテリジェーでビルドできる。


# 参照

https://github.com/playframework/play-scala-seed.g8    

ここも参考になる    
https://yoshinorin.net/2017/03/22/begin-scala-with-play-intellij/    


