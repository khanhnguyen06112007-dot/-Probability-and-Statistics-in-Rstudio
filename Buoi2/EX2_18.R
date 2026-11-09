rm(list = ls())
PhepThu = function() sample(1:6, size = 2, replace = TRUE)

# Hieu = 0
A = function(){
  c = PhepThu()
  condition = (c[1] == c[2])
  return (condition)
}

# Hieu = 4
B = function(){
  c = PhepThu()
  condition = (c[1] - c[2] == 4) | (c[2] - c[1] == 4)
  return (condition)
}

n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())

P_A = mean(QuanTracA)
P_B = mean(QuanTracB)

print(P_A)
print(P_B)