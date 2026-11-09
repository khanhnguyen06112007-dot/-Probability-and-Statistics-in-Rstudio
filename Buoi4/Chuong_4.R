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
curve(dnorm(x, 2, 0.12), from = 1.5, to = 2.5, ylab = "f_x(x)")



### Example 4.4
# a)
pbinom(4, 8, 0.3)
# b)
pnorm(2.1, 2, 0.12)
# c)
pexp(2, 3, lower.tail = FALSE)




### Example 4.5
# a)
plot(stepfun(0:8, c(0, pbinom(0:8, 8, 0.3))), ylab = "FX(x)", main = "")
# b)
curve(pnorm(x, 2, 0.12), from = 1.2, to = 2.5, ylab = "FX(x)")







### Example 4.6
# a)
qbinom(0.25, 8, 0.3)
# b)
qnorm(0.975, 2, 0.12)




### Example 4.7
# a)
rpois(10, 2)
# b)
sum(rbinom(80, 1, 0.02))
# c)
rnorm(15, 2, 0.12)





    




