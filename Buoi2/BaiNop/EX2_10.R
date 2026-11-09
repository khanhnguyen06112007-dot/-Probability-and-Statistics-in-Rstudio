rm(list = ls())
PhepThu = function() sample(1:6, size = 1)
BienCo = function(){
  first = PhepThu()
  second = PhepThu()
  condition = ((first == 2 * second) | (second == 2 * first))
  return (condition)
}

n = 10000
QuanTrac = replicate(n, BienCo())
P = mean(QuanTrac)
print(P)