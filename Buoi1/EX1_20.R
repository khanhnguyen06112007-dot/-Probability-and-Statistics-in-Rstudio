rm(list = ls())
Average = function(x){
  x_size = length(x)
  cur_sum = 0
  cnt = 0
  for (i in 1 : x_size){
    if (!is.na(x[i])){
      cur_sum = cur_sum + x[i]
      cnt = cnt + 1
    }
  }
  return (cur_sum / cnt)
}

FilterElement = function(x){
  avg = Average(x)
  x_size = length(x)
  res = x[!is.na(x)]
  res = res[res > avg]
  return (res)
}

x = c(1, 2, 3, 4, 5, 6, 7, 8, 9, NA, NA, NA)
print(FilterElement(x))


