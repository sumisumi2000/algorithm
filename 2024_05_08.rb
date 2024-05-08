line = gets.split(' ')

numA = line[0].to_i
numB = line[1].to_i
numX = line[2].to_i

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
