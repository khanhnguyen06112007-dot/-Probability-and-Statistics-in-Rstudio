### Example 3.1
# a)
p = function(k) choose(8,k)*0.3^k*0.7^(8-k)
k = 0:8
p(k)
sum(p(k))

# b)
f = function(x, mu = 0, sigma = 1) {
  1/sqrt(2*pi*sigma^2) * exp(-(x-mu)^2/(2*sigma^2))
}
f(0)
integrate(f, lower = -Inf, upper = Inf)

f(0,2,3)
integrate(function(x) f(x,2,3), lower = -Inf, upper = Inf)$value

### Example 3.2
par(mfrow = c(1,2))
# a)
plot(k, p(k), type = "h" , xlab = "x", ylab = "P(X = x)", main = "Example 3.2a")

# b)
curve(f, from = -3, to = 3, xlab = "x", ylab = "f(x)", main = "Example 3.2b")
curve(f(x,1 ,2), from = -3, to = 3, xlab = "x", ylab = "f(x)", main = "Example 3.2b")


### Example 3.3
# a)
F = function(k) sum(p(0:k))
F(4)
F = Vectorize(F)
F(c(1,2,3))


# b)
F2 = function(a, mu = 0, sigma = 1) {
  integrate(function(x) f(x, mu, sigma), lower = -Inf, upper = a)$value
}
F2(1.96)
F2 = Vectorize(F2)
F2(c(1,2))
F3 = function(a)  integrate(f, lower = -Inf, upper = a)$value
F3(1.96)
F3 = Vectorize(F3)
F3(c(1,2))



### Step Function
x = c(2, 4, 6)
y = c(0, 3, 2, 5)
sf = stepfun(x, y)
plot(sf, main = "Step Function", xlab = "x", ylab = "f(x)")


### Example 3.4
# a)
plot(stepfun(k, c(0, F(k))), ylab = "F(x)", main = "")

# b)
curve(F2, from = -3, to = 3, ylab = "F(x)")



### Example 3.5
# a)
K = k[F(k) >= 0.25]
x_p = min(K)
x_p
F(1)
# b) 
uniroot(function(x) F2(x) - 0.975, interval = c(-3,3))$root # interval là khoảng tìm kiếm với điều kiện f(a)*f(b) < 0
F2(1.959992)



### The function Sample() in R
sample(1:7)
sample(1:10, size = 3, replace = TRUE) # replace = TRUE: lấy hoàn lại
X = sample(x = c("red", "blue", "yellow"), size = 100, prob = c(1/2, 1/4, 1/4), replace = TRUE)
X
table(X)
prop.table(table(X))



### Exercise 3.1
# a)
f = function(x) 0.07*x^(-0.93)
F = function(a) integrate(f, lower = 0, upper = a)$value
F(0.2)
F = Vectorize(F)
F(c(2,3))

# b)
integrate(f, lower = 0, upper = 1)$value




### Exercise 3.2
x = sample(1:5, size = 100, replace = TRUE, prob = c(0.1, 0.2, 0.4, 0.2, 0.1))
prob = table(x) / 100
barplot(prob, names.arg = 1:5, main = "Exercise 3.2", xlab = "x", ylab = "P(X)", col = "blue")


### Exercise 3.3, 3.4
x = 1:5
p = c(0.1, 0.2, 0.3, 0.3, 0.1)
sum(p)
barplot(p, names.arg = x, xlab = "X", ylab = "P(X)", main = "Exercise 3.4", col = "red")


### Exercise 3.5
x = 1:5
p = c(0.1, 0.2, 0.3, 0.3, 0.1)
F = function(a) sum(p[x <= a])
F(3)


### Exercise 3.6
x = 1:5
p = c(0.1, 0.2, 0.3, 0.3, 0.1)
F = function(a) sum(p[x <= a])
F = Vectorize(F)
plot(stepfun(x, c(0, F(x))), main = "Exercise 3.6", xlab = "x", ylab = "F(x)", col = "red")
     
### Exercise 3.7
f = function(x) 2*x
integrate(f, lower = 0, upper = 1)

### Exercise 3.8
f = function(x) 2*x
integrate(f, lower = 0, upper = 0.5)$value

### Exercise 3.9
f = function(x) 2*x
curve(f, from = 0, to = 1, col = "red", xlab = "x", ylab = "f(x)")

### Exercise 3.10
F = function(a) integrate(function(x) 2*x, lower = 0, upper = a)$value
uniroot(function(x) F(x) - 0.75, c(0,1))$root
