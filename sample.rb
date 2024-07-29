array = (1..1000)

sum = 0

array.each do |num|
  sum += num if num % 3 == 0 || num % 5 == 0
end

puts sum

array = []

p *(1..1000).class
