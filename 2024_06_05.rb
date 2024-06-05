N, K = gets.chomp.split.map(&:to_i)
# カードの数の配列
cards = gets.chomp.split(" ").map(&:to_i)

# カードの総和が合計以下の場合は全て不必要
if cards.sum <= K
  puts cards.size
else
  # K より大きい数のカードは必要なので取り除く
  cards.delete_if{|n| n >= K}

  # よい集合の組み合わせの配列を保存する配列
  good_set = []

  # よい集合の組み合わせを取得
  N.times do |n|
    cards.combination(n + 1) {|r| good_set << r if r.sum >= K}
  end

  # 必要なカードの数を保存する配列
  need_num = []

  # カード毎のよい集合の組み合わせを取得
  cards.each do |card|
    copy = Marshal.load(Marshal.dump(good_set))
    # カードの数字が含まれているよい集合の組み合わせを取得
    set_card = copy.select { |set| set.include?(card)}
    # 組み合わせからカード自身の数字を取り除く
    set_card.map! do |set|
      set.each_with_index do |num, idx|
        set.slice!(idx) if num == card
      end
    end
    # set_card.map! {|set| set.difference([card])}
    # 組み合わせの和を保存する配列
    set_sum = []
    set_card.size.times do |set|
      set_card[set].size.times do |n|
        set_card[set].combination(n + 1) { |r| set_sum << r.sum }
      end
    end
    # カードが必要であるか判定
    set_sum.each do |num|
      if num >= K - card && num < K
        need_num << card
        break
      end
    end
  end

  p cards.difference(need_num).size
end
