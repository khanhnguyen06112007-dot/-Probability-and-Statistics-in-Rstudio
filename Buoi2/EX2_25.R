rm(list = ls())
# Chuyển đổi thành bài toán tính xác suất chọn 1 điểm bên trong hình vuông thuộc
# hình tròn ta có cách giải quyết sau:
PhepThu = function() x = runif(2, min = -1, max = 1)
BienCo = function() sum(PhepThu()^2) <= 1

n = 100000
QuanTrac = replicate(n, BienCo())
P = mean(QuanTrac)

# Xác suất Bài toán này là P = pi / 4
Pi = P * 4
print(Pi)