rm(list = ls())
set.seed(2026)
n = 10
num = 100000
p1 = 0.03
A = function(){
  x = sample(c("Hoạt động", "Hỏng"), size = 10, replace = TRUE, prob = c(1 - p1, p1))
  return ("Hỏng" %in% x)
}
QuanTrac = replicate(num, A())
P = mean(QuanTrac)
print(P)

p2 = 0.001
B = function(){
  x = sample(c("Hoạt động", "Hỏng"), size = 10, replace = TRUE, prob = c(1 - p2, p2))
  return ("Hỏng" %in% x)
}
QuanTracB = replicate(num, B())
P_B = mean(QuanTracB)
print(P_B)