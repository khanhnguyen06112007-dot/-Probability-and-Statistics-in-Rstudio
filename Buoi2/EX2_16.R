rm(list = ls())
PhepThu = function() sample(c("Sap", "Ngua"), size = 3, replace = TRUE)

D = function(){
  c = PhepThu()
  condition = (sum(c == "Ngua") > sum(c == "Sap"))
  return (condition)
}

E = function(){
  c = PhepThu()
  condition = (sum(c == "Ngua") == 3 | sum(c == "Sap") == 3)
  return (condition)
}

n = 10000
QuanTracD = replicate(n, D())
QuanTracE = replicate(n, E())

P_D = mean(QuanTracD)
P_E = mean(QuanTracE)

print(P_D)
print(P_E)