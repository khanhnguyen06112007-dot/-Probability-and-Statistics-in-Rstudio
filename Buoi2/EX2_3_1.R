rm(list = ls())
Phepthu = function() sample(x = c("Sap", "Ngua"), size = 10, replace = TRUE)
A = function() sum(Phepthu() == "Ngua") == 3
n = 10000
QuantracA = replicate(n, A())
mean(QuantracA)