# 入力
n, k = gets.split.map(&:to_i)
d = gets.split(' ').map(&:to_i)

# メソッド
def remove_dislike_number(n, k, d)
  all_number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  available_number = all_number - d

  combinations = available_number.repeated_permutation(n.to_s.length).to_a
  combinations.each do |comb|
    number = comb.join.to_i
    return number if number >= n
  end
end

puts remove_dislike_number(n, k, d)
