a = gets.to_i
b = gets.to_i
x = gets.to_i

answer = (a..b).inject(0) {|count,i| count += 1 if i % x == 0; count}

puts answer
