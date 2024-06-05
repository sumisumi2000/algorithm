# https://beta.atcoder.jp/contests/abc056/submissions/2924044
N, K, *as = $stdin.read.split.map(&:to_i)
AS = as.sort.reverse

sum_a = 0
ans = 0
for i in 0...N
  if sum_a + AS[i] < K
    sum_a += AS[i]
    ans += 1
  else
    ans = 0
  end
  #p a: AS[i], sum_a: sum_a, ans: ans
end
p ans
