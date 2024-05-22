w = gets

# 正誤判定
answer = true

# 文字数別にグループ化して、配列のサイズが奇数なら false
w.chomp.split('').group_by(&:itself).each_value do |value|
  if value.size.odd?
    answer = false
    break
  end
end

# 出力
if answer
  puts 'Yes'
else
  puts 'No'
end
