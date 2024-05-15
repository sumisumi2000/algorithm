w = gets

# 正誤判定
answer = true

# 文字数別にグループ化して、配列のサイズが奇数なら false
w.chomp.split('').group_by(&:itself).each_value do |value|
  answer = false if value.size.odd?
  break
end

# 出力
if answer
  p 'Yes'
else
  p 'No'
end
