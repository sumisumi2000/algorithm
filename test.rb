# 入力：回数
length = gets.to_i
# 回数ぶん回す
sentences = []
length.times do
  sentences << gets.chomp
end

# 入力した文字列の中で、それぞれの文字が何回出現しているかをハッシュで返す
sentence_hash = sentences.map{ |sentence| sentence.split('').group_by(&:itself).map{ |key,value| [key,value.count]}.to_h }

# ハッシュの数が少ない順にソート
sentence_hash = sentence_hash.sort_by{ |hash| hash.values.max }.reverse

# 一番少ないハッシュを取得
answer = sentence_hash.shift
delete_key = ''
sentence_hash.each do |hash|
  answer.each do |key,value|
    if hash.has_key?(key)
      word = hash[key]
      count = word <= value ? word : value
      answer[key] = count
    else
      delete_key = key
    end
  end
  answer.delete(delete_key)
end

answer = answer.map{ |key,value| key * value }.join

puts answer
