# 受け取り
w = gets.chomp
# 配列化
array = w.split("")
# 結果に使うresult変数を定義
result = ""
# 配列の要素を取り出し
array.each do |a|
  # 配列の要素を一つ取り出して、その要素と同一の要素を全て取り出して変数numberに格納
  number = array.select { |a2| a2 == a }
  # numberが奇数の場合はresultに"NO"を格納して繰り返しを強制終了
  if number.count % 2 == 1
    result = "No"
    break
  end
  result = "Yes"
end
# 結果を出力
puts result
