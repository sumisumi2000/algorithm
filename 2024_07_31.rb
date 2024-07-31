n, m = gets.chomp.split.map(&:to_i)

# 犬と猿の数の差
n, m = m, n if (n - m).negative?
diff = n - m

# 階乗を計算するメソッド（各計算ごとに 10 ** 9 + 7 で割る）
def factorial(num)
  init = 1
  num.times do |n|
    init = (n + 1) * init % (10 ** 9 + 7)
  end
  return init
end

case diff
# 差がない場合は犬と猿の各並び順を計算し、組み合わせを出す為に2乗し、先頭が犬と猿の場合があるので2倍する
when 0
  # answer = (1..n).inject(&:*) ** 2 * 2
  answer = factorial(n) ** 2 * 2
# 差が1の場合は先頭が犬 or 猿のどちらかで確定
when 1
  # answer = (1..n).inject(&:*) * (1..m).inject(&:*)
  # answer = (1..m).inject(&:*) ** 2 * n
  answer = factorial(m) ** 2 * n
# 差が2以上の場合は組み合わせが存在しない
else
  answer = 0
end

puts answer % (10 ** 9 + 7)
