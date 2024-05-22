line = gets.split(' ')

numA = line[0].to_i
numB = line[1].to_i
numX = line[2].to_i

answer = numB / numX - numA / numX

answer += 1 if numA % numX == 0

puts answer
