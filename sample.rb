# N個の町とM本の道路
N, M = gets.split.map(&:to_i)
# 道路配列
load_array = []
# M本分入力を受け付ける
M.times do
  a1, b1 = gets.split.map(&:to_i)
  # 配列にぶち込む
  load_array << a1
  load_array << b1
end

# 1から町の個数までカウントアップ
1.upto(N) do |i|
  # 配列内の各数字（町）の出現回数を表示
  puts load_array.count(i)
end
