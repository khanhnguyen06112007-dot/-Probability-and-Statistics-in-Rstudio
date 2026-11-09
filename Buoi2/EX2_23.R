rm(list= ls())
Vang = rep("Vàng", 14)
Do = rep("Đỏ", 13)
Cam = rep("Cam", 20)
Nau = rep("Nâu", 12)
XanhLa = rep("Xanh lá", 20)
XanhDuong = rep("Xanh dương", 21)

Keo = c(Vang, Do, Cam, Nau, XanhLa, XanhDuong)
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
QuanTracD = replicate(n, D())
P_d = mean(QuanTracD)
print(P_d)