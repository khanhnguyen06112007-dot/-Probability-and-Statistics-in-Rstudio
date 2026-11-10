### Bai tap 4.1
N = 100
M = 25
n = 15
x = 0:n
p = dhyper(x, M, N - M, n)
barplot(p, x, ylab = "P(X = x)")



### Bai tap 4.2
Px = phyper(12, M, N - M, n) - phyper(5, M, N - M, n)
cat(Px)


### Bai tap 4.3
rm(list = ls())
# a) 
curve(dexp(x, 0.6), 0, 10, col = "blue", lwd = 2, main = "Exponential Distribution", xlab = "x", ylab = "Density")
# b) 
curve(dexp(x, 0.3), 0, 10, col = "red", lwd = 2, main = "Expenential Distribution", xlab = "x", ylab = "Density",add = TRUE)
legend("topright", legend = c("lambda = 0.6", "lambda = 0.3"), col = c("blue", "red"), lwd = 2)
# c)
# Dien tich phan duoi ham X~Exp(0.6)
s1 = pexp(10, 0.6) - pexp(0, 0.6)
# Dien tich phan duoi ham X~Exp(0.3) 
s2 = pexp(10, 0.3) - pexp(0, 0.3)
cat("s1 = ", s1, "\n")
cat("s2 = ", s2, "\n")


### Bai tap 4.4
# Vẽ hàm xác suất của biến X ~ P(1) với x thuộc {1,....,8}
rm(list = ls())
x = 1:8
p = dpois(x, 1)
plot(x, p, type = "h", main = "Ham xác suất X~P(1)")



### Bai tap 4.5
# Vẽ hàm mật độ xác suất của biến X ~ X^2(3) với x thuộc [0, 10]
rm(list = ls())
curve(dchisq(x, 3), from = 0, to = 10, xlab = "x", ylab = "f(x)")



### Bai tap 4.6
rm(list = ls())
par(mfrow = c(1, 2))
# a) Vẽ đồ thị của hàm xác suất X ~ B(50, 0.08) lấy ylim = c(0, 0.25)
x1 = 0:50
p1 = dbinom(x1, 50, 0.08)
plot(x1, p1, type = "h", ylim = c(0, 0.25), xlab = "x", ylab = "f(x)")
# b) Vẽ đồ thị của hàm xác suất của biến X ~ P(4) với x thuộc {0,...,50}
# với cùng lựa chọn ylim = c(0, 0.25)
x2 = 0:50
p2 = dpois(x2, 4)
plot(x2, p2, type = "h", ylim = c(0, 0.25))



### Bai tap 4.7
# Vẽ hàm mật độ của X~B(50, 0.4) và Y~N(20,12) vào chung 1 đồ thị
rm(list = ls())
x = 0:50
plot(x, dbinom(x, 50, 0.4), type = "h", xlab = "x", ylab = "P(X = x)")
curve(dnorm(x, 20, sqrt(12)), add = TRUE)



### Bai tap 4.8
# So sánh xác suất P(X = 5) giữa hai phân phối nhị thức X1~B(10, 0.4)
# và X2~B(10, 0.6). Giải thích sự khác biệt
rm(list = ls())
p1 = dbinom(5, 10, 0.4)
p2 = dbinom(5, 10, 0.6)
cat(p1 == p2)



### Bai tap 4.9
# Tính P(4 <= X <= 8) với X ~ B(12, 0.5) bằng 2 cách: Dùng tổng các xác suất 
# riêng lẻ, và dùng hàm phân phối tích lũy
rm(list = ls())
k = 4:8
p1 = sum(choose(12, k) * 0.5^k * 0.5^(12 - k))
p2 = pbinom(8, 12, 0.5) - pbinom(3, 12, 0.5)
cat(p1, p2)



### Bai tap 4.10
rm(list = ls())
par(mfrow = c(1, 2))
curve(dnorm(x, 5, 1))
curve(dnorm(x, 5, sqrt(2)))



### Bai tap 4.11
rm(list = ls())
qnorm(0.025, 0, 1)
qnorm(0.975, 0, 1)



### Bai tap 4.12
rm(list = ls())
x = rpois(1000, 3)
hist(x)



### Bai tap 4.13
# Tính P(X > 5) với X~P(2)
rm(list = ls())
p = ppois(5, 2, lower.tail = FALSE)
cat(p)



### Bai tap 4.14
# Vẽ đồ thị hàm phân phối mũ với lambda = 0.5
rm(list = ls())
par(mfrow = c(1, 2))
curve(dexp(x, 0.5), from = 1, to = 10)
curve(dexp(x, 1), from = 1, to = 10)



### Bai tap 4.15
# Tính P(X <= 3) với X ~ Exp(0.2) 
rm(list = ls())
p = pexp(3, 0.2)
cat(p)



### Bai tap 4.16
# Mô phỏng 500 giá trị từ phân phối chuẩn N(100, 15). Tính tỷ lệ giá trị nằm
# trong khoảng từ [85, 115]
x = rnorm(500, 100, sqrt(15))
tylemophong = mean(x >= 85 & x <= 115)
tylelythuyet = pnorm(115, 100, sqrt(15)) - pnorm(85, 100, sqrt(15))
cat(tylemophong, tylelythuyet)



### Bai tap 4.17
# Tính phân vị mức 0.9 của X~X^2(5)
qchisq(0.9, 5)



### Bai tap 4.18
# Vẽ đồ thị hàm mật độ  X~F(5, 10)
curve(df(x, 5, 10), from = 1, to = 10)



### Bai tap 4.19
rm(list = ls())
par(mfrow = c(1, 2))
x = 0:50
plot(x, dbinom(x, 50, 0.1), type = "h", xlab = "x", ylab = "B(50, 0.1)")
plot(x, dpois(x, 5), type = "h", xlab = "x", ylab = "P(5)")



### Bai tap 4.20
# Tính xác suất P(X <= 2) với X ~ K(N = 100, M = 30, n = 10)
phyper(2, 30, 70, 10)



### Bai tap 4.21
x = rnorm(1000, 0, 1)
qqnorm(x)



### Bai tap 4.22
R = function(a, b, TrungBinh, DoLechChuan){
  pnorm(b, TrungBinh, DoLechChuan) - pnorm(a, TrungBinh, DoLechChuan)
}
R(1, 2, 1.5, 0.3)
