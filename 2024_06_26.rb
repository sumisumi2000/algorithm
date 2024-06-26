N, M = gets.chomp.split.map(&:to_i)
# 都市の数を格納する配列
cities = []
M.times do
  cities += gets.chomp.split.map(&:to_i)
end

# 数字をキーとしてハッシュ化
roudes = cities.group_by(&:itself)

N.times do |n|
  # 1~N までの数字でハッシュのキーが存在しない場合は 0 を出力、それ以外は
  puts roudes.has_key?(n + 1) ? roudes[n + 1].size : 0
end
