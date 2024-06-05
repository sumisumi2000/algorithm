a, b, c = gets.split.map(&:to_i)

if b-a == c-b
  puts "YES"
else
  puts "NO"
end

p 'stash のテスト１回目'
