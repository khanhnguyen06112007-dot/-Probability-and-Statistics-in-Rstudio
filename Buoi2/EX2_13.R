rm(list = ls())
PhepThu = function(){
  sample(x = rep(c("Nam", "Nu"), 10), size = 5, replace = FALSE)
}

BienCo = function() sum(PhepThu() == "Nu") == 4

n = 10000
QuanTrac = replicate(n, BienCo())
P = mean(QuanTrac)
print(P)