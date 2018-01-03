# nlp100_knock


## swiftの環境

https://swiftenv.fuller.li/en/latest/


## kotlinの環境

    curl -s "https://get.sdkman.io" | bash
    source ~/.sdkman/bin/sdkman-init.sh
    sdk list
    sdk install java
    sdk install kotlin
    sdk list kotlin

参照

https://github.com/yyYank/kotlin-rev-solution/blob/master/docs/kotlin-install.md


## scalaの環境
	
	sdk list scala
	scala -version
	brew install sbt
	sbt --version
	mkdir -p SampleProject/src/main/scala
	mkdir -p SampleProject/src/main/java
	cd SampleProject
	touch Build.sbt
	Build.sbtの中身を書く
	touch src/main/scala/HelloWorldScala.scala
	中身を書く
	sbt compile
	sbt run
	scala src/main/scala/HelloWorldScala.scala


## cshapeの環境

    brew install mono
    mono --version

    