rm(list = ls())
PhepThu = function() sample(c(rep("Đỏ", 6), rep("Xanh", 4)), size = 3, replace = FALSE)

# A : Lấy được đúng 2 bi đỏ
A = function() sum(PhepThu() == "Đỏ") == 2

# B : Bi đầu tiên là bi đỏ
B = function() PhepThu()[1] == "Đỏ"

# AB : Lấy được đúng 2 bi đỏ và bi đầu tiên là bi đỏ
AB = function(){
  c = PhepThu()
  condition = (sum(c == "Đỏ") == 2 & c[1] == "Đỏ")
  return (condition)
}

n = 10000
QuanTracAB = replicate(n, AB())
QuanTracB = replicate(n, B())

P_AB = mean(QuanTracAB)
P_B = mean(QuanTracB)

P = P_AB / P_B
print(P)