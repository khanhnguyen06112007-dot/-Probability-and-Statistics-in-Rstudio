rm(list = ls())
PhepThu = function() sample(1:8, size = 2, replace = TRUE)

# 2 mẫu giấy rút được có tổng = 8
A = function(){
  c = PhepThu()
  condition = (c[1] + c[2] == 8)
  return (condition)
}

# ít nhất 1 trong 2 số rút được là 2
B = function() sum(PhepThu() == 2) >= 1

n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())
P_A = mean(QuanTracA)
P_B = mean(QuanTracB)

print(P_A)
print(P_B)

                          