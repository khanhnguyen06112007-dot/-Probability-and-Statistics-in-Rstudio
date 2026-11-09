Avg = function(x){
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

PhuongSai = function(x){
  n = length(x)
  valid = 0
  sum = 0
  avg = Avg(x)
  for (i in (1 : n)){
    if (!is.na(x[i])){
      res = (x[i] - avg)**2
      sum = sum + res
      valid = valid + 1
    }
  }
  return (sum / (valid - 1))
}

x = c(1, 2, 3, 4, 5,2, 10)
print(Avg(x))
print(PhuongSai(x))
