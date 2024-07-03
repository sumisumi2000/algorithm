N, K = gets.chomp.split.map(&:to_i)
herit_numbers = gets.chomp.split.map(&:to_i)

# 金額の位のそれぞれの数字を配列に格納
money_numbers = N.digits.reverse
# 使用可能な数字を格納
use_numbers = (0..9).to_a - herit_numbers
# 回答用の配列
answer = []
# 繰り上がりフラグ
carry = false

# 金額のくらいの数字ごとに使える数字と比較
money_numbers.each do |money_number|
  # 繰り上がっていると、それ以降は使用可能な数字の最小値が答えとなる
  if carry
    answer << use_numbers.min
    next
  end
  # 位の数字以上の数字が使用できない場合
  if money_number > use_numbers.max
    # 回答がまだ空の場合（先頭の数字）
    unless answer.none?
      # 直前の回答を繰り上げて使用可能な文字から直前の回答より大きい数字に変更する
      answer[-1] = use_numbers.find { |n| n > answer[-1]}
      # 使用可能な数字の中に直前より大きい数字がなかった場合、最小値に変更
      answer[-1] = use_numbers.min if answer[-1].nil?
    end
    # 使用可能な数字の最小値を回答に追加
    answer << use_numbers.min
    # 繰り上がりフラグを ON にする
    carry = true
  else
    use_numbers.each do |use_number|
      # 位の数字が使用できる場合
      if use_number >= money_number
        answer << use_number
        # 位の数字より大きい数が使用できる場合
        carry = true if use_number > money_number
        break
      end
    end
  end
end

# 回答の最大の位の数字が0の場合、使用できる0以上の最小の数字を追加
answer.unshift(use_numbers[1]) if answer.first == 0
# 回答が金額より小さい場合、1の位に最小の数字を追加
answer.push(use_numbers.min) if answer.join.to_i < money_numbers.join.to_i
# 出力
puts answer.join
