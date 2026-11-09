rm(list = ls())
PhepThu = function(){
  sample(x = c("Sap", "Ngua"), size = 3, replace = TRUE)
}

BienCo = function(){
  c = PhepThu()
  condition = sum(c == "Ngua") > sum(c == "Sap")
  return (condition)
}

n = 10000
QuanTrac = replicate(n, BienCo())
P = mean(QuanTrac)
print(P)