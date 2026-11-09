rm(list = ls())

PhepThu = function() sample(1:6, size = 2, replace = TRUE)
AB = function(){
  c = PhepThu()
  condition = ((c[1] + c[2] > 10) & (sum(c == 6) >= 1)) 
  return (condition)
}

B = function() sum(PhepThu() == 6) >= 1

n = 100000
QuanTracAB = replicate(n, AB())
QuanTracB = replicate(n, B())

P_AB = mean(QuanTracAB)
P_B = mean(QuanTracB)

P = P_AB / P_B
print(P)