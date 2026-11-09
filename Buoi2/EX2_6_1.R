# Tính xác suất trong 25 người được chọn ngẫu nhiên có ít nhất 2 người có cùng
# ngày sinh nhật. Giả sử mọi ngày sinh nhật đều có khả năng như nhau và không ai
# sinh năm nhuận

rm(list = ls())
PhepThu = function() sample(1:365, size = 25, replace = TRUE)
BienCo = function() anyDuplicated(PhepThu()) > 0

n = 10000
QuanTrac = replicate(n, BienCo())
P = mean(QuanTrac)
print(P)