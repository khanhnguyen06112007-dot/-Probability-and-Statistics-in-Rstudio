rm(list = ls())
PhepThu = function() sample(1:365, size = 30, replace = TRUE)
BienCo = function() anyDuplicated(PhepThu()) > 0

n = 100000
QuanTrac = replicate(n, BienCo())
P = mean(QuanTrac)
print(P)