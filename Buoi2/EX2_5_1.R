# A = "Nhận được ít nhất một mặt 6 khi tung 1 con xúc xắc 4 lần"
# B = "Nhận được ít nhất một cặp mặt 6 khi tung 2 con xúc sắc 24 lần"
rm(list = ls())

ExperimentA = function(){
  rolls = sample(1:6, size = 4, replace = TRUE)
  condition = sum(rolls == 6) >= 1
  return (condition)
}

ExperimentB = function(){
  first = sample(1:6, size = 24, replace = TRUE)
  second = sample(1:6, size = 24, replace = TRUE)
  condition = sum((first == second)&(first == 6)) > 0
  return (condition)
}

n = 10000
simsA = replicate(n, ExperimentA())
simsB = replicate(n, ExperimentB())

P_a = mean(simsA)
P_b = mean(simsB)

print(P_a)
print(P_b)