rm(list = ls())
PhepThu = function() sample(1:6, size = 2, replace = TRUE)
A = function(){
  c = PhepThu()
  x = max(c[1], c[2])
  return (x == 6)
}

C = function() sum(PhepThu()) >= 9
AgiaoC = function(){
  c = PhepThu()
  condition = (max(c[1], c[2]) == 6 & (sum(c) >= 9))
  return (condition)
}

n = 10000
QuanTracAgiaoC = replicate(n, AgiaoC())
QuanTracC = replicate(n, C())

P_AC = mean(QuanTracAgiaoC)
P_C = mean(QuanTracC)

P = P_AC / P_C
print(P)