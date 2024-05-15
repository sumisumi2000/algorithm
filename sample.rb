w = gets.chomp

# 文字数が奇数の時点で美しくない
if w.length.odd?
  puts 'No'
  exit
end

# 文字ごとにグループ化
group = w.split('').group_by(&:itself).map{ |key,value| [key,value.count]}.to_h

group.each do |key,value|
  # 文字数が奇数の時点で美しくない
  if value.odd?
    puts 'No'
    exit
  end
end

# 全てをくぐり抜けたら美しい
puts 'Yes'
