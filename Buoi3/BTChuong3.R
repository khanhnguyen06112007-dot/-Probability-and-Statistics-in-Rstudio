### Bai tap 3.1
# a)
f = function(x){
  ifelse(x < 0 | x > 2, 0, 0.07 * x^(-0.93))
}
P = function(k){
  integrate(function(x) f(x), lower = -Inf, upper = k)$value
}
P(0.2)
# b)
check = integrate(function(x) f(x), lower = 0, upper = 1)$value
cat(check)


### Bai tap 3.2
x = sample(1:5, size = 100, replace = TRUE, prob = c(0.1, 0.2, 0.4, 0.2, 0.1))
bar = table(x)/100
barplot(bar)

### Bai tap 3.3
k = 1:5
f = function(){
  x = sample(1:5, size = 100, replace = TRUE)
  res = as.numeric(table(factor(x, levels = 1:5)) / 100)
  return (res)
}
x = f()
check1 = function(x) sum(x)
check1(x)
### Bai tap 3.4
barplot(x)
### Bai tap 3.5
F = function(x, a) sum(x[1:a])
F(x, 3)
### Bai tap 3.6
plot(stepfun(k, c(0, cumsum(x))), ylab = "F(x)", main = "")


### Bai tap 3.7
f = function(x){
  ifelse(x < 0 | x > 1, 0, 2 * x)
}
integrate(function(x) f(x), lower = -Inf, upper = Inf)$value
### Bai tap 3.8
integrate(function(x) f(x), lower = -Inf, upper = 0.5)$value
### Bai tap 3.9
curve(f(x), from = 0, to = 1)
### Bai tap 3.10
uniroot(function(x) f(x) - 0.75, c(0, 1))$root

### Bai tap 3.11
p = c(0.1, 0.2, 0.2, 0.4, 0.1)
x = sample(1:5, size = 100, replace = TRUE, prob = p)
### Bai tap 3.12
TinhTanSuat = function(x){
  res = as.numeric(table(factor(x, levels = 1:5))) / length(x)
  return (res)
}
ketqua = TinhTanSuat(x)
print(ketqua)
### Bai tap 3.13
barplot(TinhTanSuat(x))




### Bai tap 3.14
f = function(x){
  ifelse(x < 0 | x > 1, 0, 3*x^2)
}
integrate(function(x) f(x), lower = -Inf, upper = Inf)$value

### Bai tap 3.15
integrate(function(x) f(x), lower = 0.2, upper = 0.6)$value

### Bai tap 3.16
F = function(a) integrate(function(x) f(x), lower = -Inf, upper = a)$value
uniroot(function(x) F(x) - 0.5, c(0, 1))$root


### Bai tap 3.17
MakeBar = function(k){
  x = sample(1:k, size = 100, replace = TRUE)
  res = as.numeric(table(factor(x, levels = 1:k)))/100
  return (res)
}
x = MakeBar(7)
barplot(x)

### Bai tap 3.18
f = function(x){
  ifelse(x < 2 | x > 4, 0, 1/2)
}
1 - integrate(function(x) f(x), lower = -Inf, upper = 3)$value


### Bai tap 3.19
x = runif(n = 100, min = 2, max = 4)
hist(x)


### Bai tap 3.20
f = function(x){
  ifelse(x < 0 | x > 1, 0, 6*x*(1-x))
}
integrate(function(x) f(x), lower = -Inf, upper = Inf)$value

### Bai tap 3.21
k = 1:7

MakeBar1 = function(k){
  x = sample(k, size = 100, replace = TRUE)
  res = as.numeric(table(factor(x, levels = k))) / 100
  return (res)
}
p = MakeBar1(7)
F_tich_luy = cumsum(p)
K = k[F_tich_luy >= 0.25]
phan_vi_0.25 = K[1]
phan_vi_0.25

### Bai tap 3.22
x = sample(c("A", "B", "C"), size = 100, replace = TRUE, prob = c(0.2, 0.5, 0.3))
freq = table(x)
print(freq)
barplot(freq, col = "lightblue", ylab = "Tần số")
