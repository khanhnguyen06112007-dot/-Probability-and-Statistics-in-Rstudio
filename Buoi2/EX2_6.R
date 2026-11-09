rm(list = ls())
Phepthu = function(){
  sample(c(rep("D", 3), rep("X", 7)), size = 2, replace = FALSE)
}

A = function() sum(Phepthu() == "D") == 2
B = function() sum(Phepthu() == "X") == 1

n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())

mean(QuanTracA)
mean(QuanTracB)