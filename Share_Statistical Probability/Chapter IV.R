### Example 4.1
# a)
dbinom(4, 8, 0.3)
# b)
dnorm(1.7, 2, 0.12)


### Example 4.2
# a)
dbinom(c(4, 6), 8, 0.3)
# b)
dexp(2, c(1, 2, 3))



### Example 4.3
# a)
plot(0:8, dbinom(0:8, 8, 0.3), type = "h", ylab = "P(X = x)")
# b)
curve(dnorm(x, 2, 0.12), from = 1.5, to = 2.5, ylab = "f_X(x)")


### Example 4.4
# a)
pbinom(4, 8, 0.3)
# b)
pnorm(2.1, 2, 0.12)
# c)
pexp(2, 3, lower.tail = FALSE)


### Example 4.5
par(mfrow = c(1,2))
# a)
plot(stepfun(0:8, c(0, pbinom(0:8, 8, 0.3))), xlab = "x", ylab = "F_X(x)", main = "Example 4.5a")
# b)
curve(pnorm(x, 2, 0.12), from = 1.5, to = 2.5,xlab = "x", ylab = "F_X(x)", main = "Example 4.5b")


### Example 4.6
# a)
qbinom(0.25, 8, 0.3)
# b)
qnorm(0.975, 2, 0.12)


### Example 4.7
# a)
x = rpois(1000, 2)
hist(x)
# b)
sum(rbinom(80, 1, 0.02))
# c)
rnorm(15, 2, 0.12)


### Exercise 4.3 
# a)
curve(dexp(x, rate = 0.6), from = 0, to = 10, col = "blue", lwd = 2,
      main = "Exponential Distribution", xlab = "x", ylab = "Density")
# b)
curve(dexp(x, rate = 0.6), from = 0, to = 10, col = "blue", lwd = 2,
      main = "Exponential Distributions", xlab = "x", ylab = "Density")
curve(dexp(x, rate = 0.3), from = 0, to = 10, col = "red", lwd = 2, add = TRUE)
legend("topright", legend = c("lambda = 0.6", "lambda = 0.3"), col = c("blue", "red"), lwd = 2)

# c)
area_06 = pexp(10, rate = 0.6) - pexp(0, rate = 0.6)
area_03 = pexp(10, rate = 0.3) - pexp(0, rate = 0.3)
cat("Area w.r.t lambda = 0.6 is", area_06, "\n")
cat("Area w.r.t lambda = 0.3 is", area_03, "\n")


### Exercise 4.4
plot(0:8, dpois(0:8, lambda = 1), type = "h", col = "red", xlab = "x", ylab = "P(X = x)", 
     main = "Exercise 4.4")


### Exercise 4.6
old_par = par(no.readonly = TRUE)
par(mfrow = c(2, 1))
plot(0:50, dbinom(0:50, size = 50, prob = 0.08), type = "h", col = "blue", ylim = c(0, 0.25),
     main = "Binomial B(50, 0.08)", xlab = "x", ylab = "P(X = x)")

plot(0:50, dpois(0:50, lambda = 4), type = "h", col = "orange", ylim = c(0, 0.25), 
     main = "Poisson P(4)", xlab = "x", ylab = "P(X = x)")
par(old_par)


### Exercise 4.7
n = 50
p = 0.4
mu = n * p
variance = n * p * (1 - p)
sigma = sqrt(variance)

x = 0:n
prob = dbinom(x, size = n, prob = p)
plot(x, prob, type = "h", col = "blue", main = "Binomial B(50, 0.4) and Normal N(20, 12)",
     xlab = "x", ylab = "Probability / Density")
points(x, prob, pch = 16, col = "blue")
curve(dnorm(x, mean = mu, sd = sigma), from = 0, to = 50, add = TRUE, col = "red", lwd = 2)
legend("topright", legend = c("Binomial", "Normal"), col = c("blue", "red"), pch = c(16, NA))


### Exercose 4.8
p1 = dbinom(5, size = 10, prob = 0.4)
p2 = dbinom(5, size = 10, prob = 0.6)
cat("For X ~ B(10, 0.4), then P(X = 5) = ", p1, "\n")
cat("For X ~ B(10, 0.6), then P(X = 5) = ", p2, "\n")


### Exercise 4.9 
# Method 1
p1 = sum(dbinom(4:8, size = 12, prob = 0.5))
# Method 2
p2 = pbinom(8, size = 12, prob = 0.5) - pbinom(3, size = 12, prob = 0.5)
cat("Method 1:", p1, "\n")
cat("Method 2:", p2, "\n")


### Exercise 4.10
curve(dnorm(x, mean = 5, sd = sqrt(1)), from = -2, to = 12,
      col = "blue", lwd = 2, main = "Normal Distributions N(5,1) and N(5,2)",
      xlab = "x", ylab = "Density")
curve(dnorm(x, mean = 5, sd = sqrt(2)), from = -2, to = 12,
      col = "red", lwd = 2, add = TRUE)
legend("topright", legend = c("N(5, 1)", "N(5, 2)"), col = c("blue", "red"), lwd = 2)


### Exercise 4.11
q1 = qnorm(0.025, mean = 0, sd = 1)
q2 = qnorm(0.975, mean = 0, sd = 1)
cat("Quantile 0.025:", q1, "\n")
cat("Quantile 0.975:", q2, "\n")


### Exercise 4.12 
set.seed(123)
x = rpois(1000, lambda = 3)
hist(x, breaks = seq(-0.5, max(x) + 0.5, by = 1), probability = TRUE,
     col = "lightblue", main = "Simulation of Poisson Distribution: lambda=3",
     xlab = "x", ylab = "Density")

values = 0:max(x)
points(values, dpois(values, lambda = 3), col = "red", pch = 19)
lines(values, dpois(values, lambda = 3), col = "red", type = "h", lwd = 2)
legend("topright", legend = c("Simulated data", "Theoretical PMF"),
       col = c("lightblue", "red"), pch = c(15, 19))


### Exercise 4.13 
prob = 1 - ppois(5, lambda = 2)
cat("P(X > 5) = ", prob)


### Exercise 4.14 
curve(dexp(x, rate = 0.5), from = 0, to = 10, col = "blue", lwd = 2,
      main = "Exponential Distributions", xlab = "x", ylab = "Density")
curve(dexp(x, rate = 1), from = 0, to = 10, col = "red", lwd = 2, add = TRUE)
legend("topright", legend = c("lambda = 0.5", "lambda = 1"),
       col = c("blue", "red"), lwd = 2)


### Exercise 4.15
prob = pexp(3, rate = 0.2)
cat("P(X <= 3) = ", prob)


### Exercise 4.16
set.seed(123)
x = rnorm(500, mean = 100, sd = sqrt(15))
proportion = mean(x >= 85 & x <= 115)
cat("The Simulated proportion in [85,115] is", proportion)


### Exercise 4.19 
x = 0:50
prob_binom = dbinom(x, size = 50, prob = 0.1)
prob_pois = dpois(x, lambda = 5)
plot(x, prob_binom, type = "h", lwd = 2, col = "blue", main = "Binomial B(50,0.1) vs Poisson P(5)",
     xlab = "x", ylab = "Probability")
points(x, prob_binom, col = "blue", pch = 16)
lines(x, prob_pois, type = "h", col = "red", lwd = 2)
points(x, prob_pois, col = "red", pch = 17)
legend("topright", legend = c("Binomial B(50, 0.1)", "Poisson P(5)"),
       col = c("blue", "red"), pch = c(16, 17), lwd = 2)
