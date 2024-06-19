N, x = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

candee = 0
array.each_with_index do |num, i|
  if i == 0
    if num > x
      array[i] = x
      candee = candee + (num - x)
    end
  else
    sum = array[i-1] + num
    if sum > x
      diff = sum - x
      array[i] = num - diff
      candee = candee + diff
    end
  end
end

puts candee
