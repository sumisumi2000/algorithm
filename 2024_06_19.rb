A, B = gets.chomp.split.map(&:to_i)

# 開始時間を計算
start_time = A + B

# 出力
puts start_time >= 24 ? start_time -= 24 : start_time
