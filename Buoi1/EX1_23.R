rm(list = ls())
skewness = function(x){
  x = na.omit(x)
  x_size = length(x)
  
  # Tính giá trị trung bình
  mean_x = mean(x) 
  # Tính s: độ lệch chuẩn của mẫu
  s = sd(x)       
  
  res = sum((x - mean_x)^3 / (x_size * (s^3)))
  return (res)
}

x = c(1, 3, 5, 7, 2, 10)
print(skewness(x))
