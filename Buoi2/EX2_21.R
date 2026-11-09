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

n = 10000
QuanTracA = replicate(n, A())
P_a = mean(QuanTracA)
print(P_a)