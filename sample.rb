# NとKの入力
N, K = gets.split.map(&:to_i)
# 渡される値
array = gets.split.map(&:to_i)

# 大きい順に並べる
sort_array = array.sort.reverse

# 必要なやつ
needs = []
# カウント用のindex
index = 0
# 配列の合計がそもそもK以上になるかどうか
if sort_array.sum >= K
  while index < N
    # その値だけでK以上か
    if sort_array[index] >= K
      # 必要なやつにいれる
      needs << sort_array[index]
      # indexをインクリメント
      index += 1
    else
      # その値だけでK以上でない場合は配列の中身を足していく
      # 配列をコピー
      new_array = sort_array.clone
      # すでに確認済みの値を配列から削除
      new_array = new_array - new_array.shift(index)
      # 残りの配列を足してK以上になるか
      if new_array.sum >= K
        sum = 0
        # 残りの配列からK以上になるまで加算
        new_array.each_with_index do |num, i|
          if sum < K
            sum += num
            index += 1
          else
            needs << new_array.slice(0,i)
            break
          end
        end
      else
        # ならなかったらループから抜ける
        break
      end
    end
  end
end

# 入力されたNから必要な分を削除
answer = N - needs.flatten.count
puts answer
