# 数字の種類数
N = gets.to_i
# カードの配列

# カードのハッシュ
cards_index = Hash.new { |h, key| h[key] = [] }
(N * 2).times do |num|
  card = gets.to_i
  cards_index[card] << num
end

# 撹拌度
stirring_degree = cards_index.values.sum { |v| v[1]- v[0] - 1 }

p stirring_degree
