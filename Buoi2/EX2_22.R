rm(list= ls())
Vang = rep("Vàng", 14)
Do = rep("Đỏ", 13)
Cam = rep("Cam", 20)
Nau = rep("Nâu", 12)
XanhLa = rep("Xanh lá", 20)
XanhDuong = rep("Xanh dương", 21)

Keo = c(Vang, Do, Cam, Nau, XanhLa, XanhDuong)
#Chọn ngẫu nhiên 4 viên kẹo thì có ít nhất 1 màu xanh dương
PhepThu2 = function() sample(Keo, size = 4, replace = FALSE)
C = function() sum(PhepThu2() == "Xanh dương") >= 1

n = 10000
QuanTracC = replicate(n, C())
P_c = mean(QuanTracC)
print(P_c)