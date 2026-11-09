rm(list = ls())
#Một lớp học 10 nam, 10 nữ, chọn ngẫu nhiên 5 sinh viên làm bài
PhepThu = function() sample(rep(c("Nam", "Nu"), 10), size = 5, replace = FALSE)

#Tính xác suất cả 5 sinh viên đều là Nam
A = function() sum(PhepThu() == "Nam") == 5
# Tính xác suất có 4 sinh viên là Nữ
B = function() sum(PhepThu() == "Nu") == 4

n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())

P_a = mean(QuanTracA)
P_b = mean(QuanTracB)
print(P_a)
print(P_b)