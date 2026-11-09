rm(list= ls())

Vang = rep("Vàng", 14)
Do = rep("Đỏ", 13)
Cam = rep("Cam", 20)
Nau = rep("Nâu", 12)
XanhLa = rep("Xanh lá", 20)
XanhDuong = rep("Xanh dương", 21)

Keo = c(Vang, Do, Cam, Nau, XanhLa, XanhDuong)
# Chọn ngẫu nhiên 1 viên kẹo không có màu xanh
PhepThu1 = function() sample(Keo, size = 1)
A = function(){
  c = PhepThu1()
  condition = (c != "Xanh lá" & c != "Xanh dương")
  return (condition)
}

# Chọn ngẫu nhiên 1 viên kẹo thì được màu đỏ, cam, hoặc vàng
B = function(){
  c = PhepThu1()
  condition = (c == "Đỏ" | c == "Cam" | c == "Vàng")
  return (condition)
}

#Chọn ngẫu nhiên 4 viên kẹo thì có ít nhất 1 màu xanh dương
PhepThu2 = function() sample(Keo, size = 4, replace = FALSE)
C = function() sum(PhepThu2() == "Xanh dương") >= 1

#Chọn ngẫu nhiên 6 viên kẹo thì tất cả được 6 màu khác nhau
PhepThu3 = function() sample(Keo, size = 6, replace = FALSE)
D = function(){
  c = PhepThu3()
  x1 = (sum(c == "Vàng") == 1)
  x2 = (sum(c == "Đỏ") == 1)
  x3 = (sum(c == "Cam") == 1)
  x4 = (sum(c == "Nâu") == 1)
  x5 = (sum(c == "Xanh lá") == 1)
  x6 = (sum(c == "Xanh dương") == 1)
  return (x1 & x2 & x3 & x4 & x5 & x6)
}

n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())
QuanTracC = replicate(n, C())
QuanTracD = replicate(n, D())

P_a = mean(QuanTracA)
P_b = mean(QuanTracB)
P_c = mean(QuanTracC)
P_d = mean(QuanTracD)

print(P_a)
print(P_b)
print(P_c)
print(P_d)
