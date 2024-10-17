module FreezeHello
  HELLO = "こんにちは".freeze
end

# モジュールに対して freeze
FreezeHello.freeze

# 破壊的変更はできない
# FreezeHello::HELLO.upcase!

p FreezeHello::HELLO

# 再代入も防ぐ
FreezeHello::HELLO = "hello"

p FreezeHello::HELLO
