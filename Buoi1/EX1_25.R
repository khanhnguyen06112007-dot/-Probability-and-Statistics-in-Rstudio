rm(list = ls())
cov = function(x, y){
  x = na.omit(x)
  y = na.omit(y)
  n_x = length(x)
  n_y = length(y)
  
  if (n_x == n_y){
    mean_x = mean(x)
    mean_y = mean(y)
    res = sum((x - mean_x) * (y - mean_y)) / (n_x - 1)
    return (res)
  }
  return (FALSE)
}

x = c(1, 2, 3, 4)
y = c(4, 5, 6, 7)

print(cov(x, y))