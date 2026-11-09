rm(list = ls())
PhepThu = function() sample(1:6, size = 2, replace = TRUE)
BienCo = function(){
  c = PhepThu()
  condition = (c[1] == c[2] * 2 | (c[2] == c[1] * 2))
  return (condition)
}

n = 10000
QuanTrac = replicate(n, BienCo())
P = mean(QuanTrac)
print(P)