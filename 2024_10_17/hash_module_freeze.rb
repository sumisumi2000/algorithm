module FreezeHello
  # キーと値の両方に対して freeze
  HELLO = { Japanese: "こんにちは", English: "hello"}.each {|k, v|
    k.freeze
    v.freeze
    p k, v
  }.freeze
end

# モジュールに対して freeze
FreezeHello.freeze

# 要素に対する破壊的変更はできない
# FreezeHello::HELLO[:English].upcase!

p FreezeHello::HELLO

# 要素に対する再代入も防ぐ
# FreezeHello::HELLO[:Japanese] = "こんばんは"

puts

p FreezeHello::HELLO
