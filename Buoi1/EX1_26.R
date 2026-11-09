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

rx_y = function(x, y){
  cov_xy = cov(x, y)
  s_x = var(x)
  s_y = var(y)
  if (cov_xy == FALSE){
    return (FALSE)
  }
  res = (cov_xy / (s_x * s_y))
  return (res)
}

x = c(1, 2, 3, 4)
y = c(4, 5, 6, 8)

print(rx_y(x, y))


