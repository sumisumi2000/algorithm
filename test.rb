n, m = gets.chomp.split.map(&:to_i)

streets = []

m.times do
  t, y = gets.chomp.split.map(&:to_i)
  streets << t
  streets << y
end

road_counts = Hash.new(0)

streets.each do |city|
  road_counts[city] += 1
end

(1..n).each do |city|
  puts road_counts[city]
end
