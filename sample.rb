num = 7

answer = 0

while num <= 7777777
  answer += num.to_s.count('7')
  num += 7
end

p answer
