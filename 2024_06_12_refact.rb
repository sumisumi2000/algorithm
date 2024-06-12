N, X = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i) + [0]

ans = 0
1.upto(N - 1) do |i|
  v = [as[i - 1] + as[i] - X, 0].max
  ans += v
  as[i] = [as[i] - v, 0].max
end
puts ans
