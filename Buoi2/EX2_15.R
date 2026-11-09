rm(list = ls())
PhepThu = function() sample(1:6, size = 2, replace = TRUE)

AB = function(){
  ketqua = PhepThu()
  condition = (sum(ketqua) >= 10 & (6 %in% ketqua))
  return (condition)
}

B = function() 6 %in% PhepThu()

n = 10000
QuanTracAB = replicate(n, AB())
QuanTracB = replicate(n, B())

P_AB = mean(QuanTracAB)
P_B = mean(QuanTracB)

result = P_AB / P_B
print(result)