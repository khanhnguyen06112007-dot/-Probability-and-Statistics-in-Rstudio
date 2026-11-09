rm(list = ls())
# Gieo 2 xúc xắc cân đối đồng chất
PhepThu = function() sample(1:6, size = 2, replace = TRUE)
# A là biến cố tổng số chấm bằng 7
A = function() sum(PhepThu()) == 7
# B là biến cố có ít nhất 1 mặt 6 chấm
B = function() sum(PhepThu() == 6) >= 1
# C là biến cố tổng số chấm là số chẵn
C = function() sum(PhepThu()) %% 2 == 0
# A hợp B là: Có ít nhất 1 mặt 6 chấm hoặc tổng số chấm bằng 7
AhopB = function(){
  c = PhepThu()
  condition = (sum(c == 6) >= 1 | (sum(c) == 7))
  return (condition)
}
# A giao B: có ít nhất 1 mặt 6 chấm và tổng số chấm bằng 7
AGiaoB = function(){
  c = PhepThu()
  condition = (sum(c == 6) >= 1 & (sum(c) == 7))
  return (condition)
}
# Bù của A: Tổng số chấm khác 7
BuA = function() sum(PhepThu()) != 7
# P(A|C) = P(AC)/P(C)
AgiaoC = function(){
  c = PhepThu()
  condition = (sum(c) == 7 & (sum(c) %% 2 == 0))
  return (condition)
}
# Tính P(A), P(B), P(C)
n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())
QuanTracC = replicate(n, C())
QuanTracAHopB = replicate(n, AhopB())
QuanTracAGiaoB = replicate(n, AGiaoB())
QuanTracBuA = replicate(n, BuA())
QuanTracAgiaoC = replicate(n, AgiaoC())

P_a = mean(QuanTracA)
P_b = mean(QuanTracB)
P_c = mean(QuanTracC)

P_AgiaoB = mean(QuanTracAGiaoB)
P_AHopB = mean(QuanTracAHopB)
P_BuA = mean(QuanTracBuA)
P_AgiaoC = mean(QuanTracAgiaoC)
P_AdieuKienC = P_AgiaoC / P_c
# Câu a:
cat("Xác suất của biến cố A là: ", P_a)
cat("Xác suất của biến cố B là: ", P_b)
cat("Xác suất của biến cố C là: ", P_c)
# Câu c
cat("Xác suất của A hợp B là: ", P_AHopB)
cat("Xác suất của A giao B là: ", P_AgiaoB)
cat("Xác suất của phần bù của A là: ", P_BuA)
# Câu d
cat("Xác suất của A, điều kiện C là: ", P_AdieuKienC)
