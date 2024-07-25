candies = gets.chomp.split.map(&:to_i)

puts candies.max == candies.min(2).sum ? 'Yes' : 'No'
