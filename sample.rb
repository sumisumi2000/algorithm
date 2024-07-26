# 数字の種類数
N = gets.to_i
# カードの配列
cards = []

(N * 2).times do
  cards.push(gets.to_i)
end

# 撹拌度
stirring_degree = 0

cards_index = {}

cards.each_with_index do |card, idx|
  if cards_index.key?(card)
    cards_index[card].push(idx)
  else
    cards_index[card] = [idx]
  end
end

N.times do |n|
  stirring_degree += cards_index[n + 1][1] - cards_index[n + 1][0] - 1
end

p stirring_degree
