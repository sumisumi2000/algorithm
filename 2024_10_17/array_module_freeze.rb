module FreezeHello
  HELLO = ["こんにちは", "hello", "眠いですね"].map(&:freeze).freeze
end

# モジュールに対して freeze
FreezeHello.freeze

# 要素に対する破壊的変更はできない
# FreezeHello::HELLO[1].upcase!

p FreezeHello::HELLO

# 要素に対する再代入も防ぐ
FreezeHello::HELLO[0] = "こんばんは"

p FreezeHello::HELLO
