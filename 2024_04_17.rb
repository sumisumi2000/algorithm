n = gets.chomp.to_i
sentences = []
n.times do
  sentences << gets.chomp
end

# 2つの文字列から重複している文字列を抽出して返すメソッド
def dublicate_characters(string1, string2)
  # string1 の方が短い文字列になるようにする
  string1, string2 = string2, string1 if string1.size > string2.size
  # 重複している文字列を格納
  word = ''
  # １つ目の文字列の文字が２つ目の文字列の文字と一致していれば word に追加
  string1.size.times do |ii|
    string2.size.times do |jj|
      if string1[ii] == string2[jj]
        word << string1[ii]
        string2.sub!(string1[ii], '')
        break
      end
    end
  end
  return word
end

if sentences.size == 1
  puts sentences[0].chars.sort.join
else
  # 配列の1番目と2番目を比較
  word = dublicate_characters(sentences[0], sentences[1])

  # 1番目と2番目の結果を残りの配列の要素と比較
  (sentences.size - 2).times do |n|
    word = dublicate_characters(word, sentences[n + 2])
  end

  # 出力
  puts word.chars.sort.join
end
