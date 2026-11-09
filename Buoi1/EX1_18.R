rm(list = ls())
funct = function(x){
  cnt = 0
  n = length(x)
  for (i in 1:n){
    if (is.na(x[i])){
      cnt = cnt + 1
    }
  }
  return (cnt)
}

x = c (1, 2, NA, NA, NA, 2, NA)
print(funct(x))