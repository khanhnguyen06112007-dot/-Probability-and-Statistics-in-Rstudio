### Example 3.1
# a)
k = 0:8
P = function(k){
  choose(8, k) * 0.3^k * 0.7^(8 - k)
}
P(k)
sum(P(k))
# b)
f = function(x, muy = 0, sigma = 1){
  1 / sqrt(2*pi*sigma^2) * exp(-(x - muy)^2 / (2*sigma^2))
}
integrate(function(x) f(x, 0, 1), lower = -Inf, upper = Inf)$value



### Example 3.2
par(mfrow = c(1, 2))
# a)
plot(k, P(k), type = "h", ylab = "P(X = x)")
# b)
curve(f(x, 0, 1), from = -3, to = 3, ylab = "f(x)")



### Example 3.3
# a)
F = function(k) sum(P(0:k))
F = Vectorize(F)
F(4)

# b)
F2 = function(a, muy = 0, sigma = 1){
  integrate(function(x) f(x, muy, sigma), lower = -Inf, upper = a)$value
}
F2 = Vectorize(F2)
F2(1.96)





### Example 3.4
# a)
plot(stepfun(k, c(0, F(k))), ylab = "F(x)", main = "")
# b)
curve(F2(x), from = -3, to = 3, ylab = "F(x)")





### Example 3.5
# a)
K = k[F(k) >= 0.25]
K[1]
# b)
uniroot(function(x) F2(x) - 0.975, c(-3, 3))$root



### Example 3.6
x = 1:7
sample(x)


