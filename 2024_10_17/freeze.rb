# 大文字から始まる変数は定数
HELLO = "こんにちは"

# freeze で変更を禁止する
HELLO.freeze

# 破壊的変更ができなくなる
HELLO.upcase!

p HELLO

# 警告は出るが再代入可能
HELLO = "hello"

p HELLO
