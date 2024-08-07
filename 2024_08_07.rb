N, K, L = gets.split.map(&:to_i)

# 道路の配列
roads = [ Set.new ]

# 鉄道の配列
rails = [ Set.new ]

# 入力から連結された街の配列を生成
def generate_towns(array, n)
  n.times do
    # 1行に含まれる2つの数字を集合で受け取る
    numbers = gets.split.map(&:to_i).to_set

    # 入力された道路が連結できるか確認
    array.each_with_index do |v, idx|
      # 道路がまだない（1番目）なら道路を登録
      if v.empty?
        array[idx] = v.union(numbers)
        next
      end
      # 連結できるなら和集合を作成
      if v.intersect?(numbers)
        array[idx] = v.union(numbers)
      # 連結できない場合は新たな道路として作成
      else
        array << numbers
      end
    end
  end
end

# 道路の入力受付
generate_towns(roads, K)

# 鉄道の入力受付
generate_towns(rails, L)

answer = Array.new(N, 1)

roads.each do |roads_s|
  rails.each do |rails_s|
    # 共通部分の集合
    common = roads_s & rails_s
    # 共通部分の集合が2以上であればその都市のカウントを +1
    if common.length >= 2
      common.each { |n| answer[n - 1] += 1 }
      break
    end
  end
end

p answer.join(" ")
