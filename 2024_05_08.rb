numA = 4
numB = 8
numX = 2

=begin オーバーフローを起こすのでダメっぽい
# 割り切れる個数を保存
count = 0

# 割り切れる数をカウント
(numA..numB).each do |num|
  count += 1 if num % numX == 0
end
=end

answer = (numB - numA) / numX

answer += 1 if numA % numX == 0

puts answer
