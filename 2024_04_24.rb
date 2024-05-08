length = gets.to_i
sentence = gets.chomp
# 入力された値を別で保存
answer = sentence.clone


class Counter
  # ) を追加した回数
  @@right = 0
  # ( を追加した回数
  @@left = 0

  class << self
    # Getter
    def right
      @@right
    end
    def left
      @@left
    end
    # カウントメソッド
    def right_count
      @@right += 1
    end
    def left_count
      @@left += 1
    end
  end
end

# 引数の文字列を()で囲まれるようにする
def wrap_with_parentheses(sentence)
  # 文字列の先頭文字が ( ではない場合、 先頭に ( を追加
  unless sentence.chr == '('
    sentence.prepend('(')
    # 追加した回数をカウント
    Counter.left_count
  end
  # 文字列の最後の文字が ) ではない場合、 最後に ) を追加
  unless sentence.slice(-1) == ')'
    sentence << ')'
    # 追加した回数をカウント
    Counter.right_count
  end
  sentence
end

# 引数の文字列から正しい文字列を排除する
def remove_correct_strings(sentence)
  # 返り値が nil になるまで繰り返す
  while sentence.gsub!('()', '')
  end
  sentence
end

# 空文字列になるまで繰り返す
while sentence != ''
  wrap_with_parentheses(sentence)
  remove_correct_strings(sentence)
end

# カウンターの数だけ括弧を左右に追加
Counter.left.times do
  answer.prepend('(')
end
Counter.right.times do
  answer << ')'
end

p answer
