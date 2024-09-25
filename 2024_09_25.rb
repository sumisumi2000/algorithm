# 入力受付
N, K = gets.chomp.split.map(&:to_i)

# 格納用の変数
array = []

# 入力受付
N.times do |n|
  array[n] = gets.chomp.split.map(&:to_i)
end

# ai の小さい順にソート
array.sort!{|a, b| a[0] <=> b[0]}

sum = 0
array.each do |set|
  sum += set[1]
  if sum >= K
    puts set[0]
    break
  end
end
