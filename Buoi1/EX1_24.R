rm(list = ls())
kurtosis= function(x){
  x = na.omit(x)
  n = length(x)
  mean_x = mean(x)
  s = sd(x)
  
  res = sum((x - mean_x)^4 / (n * (s^4)))
  return (res)
}

x = c(1, 2, 3, 4, NA)
print(kurtosis(x))