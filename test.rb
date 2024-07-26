N = gets.chomp.to_i
hash = Hash.new{|h, key| h[key] = []}
(N*2).times do |i|
  num = gets.chomp.to_i
  hash[num] << i
end

mix = 0
hash.each do |k, v|
  abs = (v[0] - v[1]).abs
  mix += abs - 1
end

puts "#{mix}\n"
