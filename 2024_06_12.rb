# 入力を受け取る
N, x = gets.chomp.split.map(&:to_i)
# キャンディーの個数の配列
candies = gets.chomp.split.map(&:to_i)

# 操作回数を保存
candy_eat_count = 0

# キャンディーの個数を保存している配列の n番目と n + 1番目の値の和と x を比較する
(N - 1).times do |i|
  sum = candies[i] + candies[i + 1]
  # 和が x より小さい場合は何もしない
  next if sum <= x
  # 和が x より大きい場合
  if sum > x
    # 和から x を引いた値を操作回数に加算
    candy_eat_count += sum - x
    # n + 1番目の値から操作回数を引く
    candies[i + 1] -= sum - x
    # マイナスになった場合、0とする
    candies[i + 1] = 0 if candies[i + 1].negative?
  end
end

# 出力
puts candy_eat_count
