Func1 = function(x){
  n = length(x)
  i = 1
  sum = 0
  valid = 0
  while(i <= n){
    if (!is.na(x[i])){ 
      sum = sum + x[i]
      valid = valid + 1
    }
    i = i + 1
  }
  
  return (sum / valid) 
}

x = c(1, 2, 3, 4, NA)
print(Func1(x))