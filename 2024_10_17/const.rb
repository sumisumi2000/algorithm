# 大文字から始まる変数は定数
HELLO = "こんにちは"

# 破壊的変更は警告すら出ない
HELLO.upcase!

p HELLO

# 警告は出るが再代入可能
HELLO = "hello"

p HELLO
