### Example 2.1
PhepThu1 = function(){
  sample(x = c("Sap", "Ngua"), size = 1, replace = TRUE) # replace = TRUE : lấy có hoàn lại
} 
PhepThu1()
PhepThu2 = function(){
  sample(x = c("Sap", "Ngua"), size = 10, replace = FALSE) # replace = FALSE : lấy không hoàn lại
} 
PhepThu2()
PhepThu3 = function(){
  sample(x = c("Sap", "Ngua"), size = 10, replace = TRUE)
}
PhepThu3()


### Exercise 2.1
PhepThu = function(){
  sample(x = c(rep("D", 3), rep("X", 7)), size = 2, replace = FALSE)
}
PhepThu()


### Exercise 2.2
PhepThu = function(){
  QuanBai = c("K", "Q", "J", 10:2, "A")
  Chat = c("Co", "Ro", "Chuon", "Bich")
  BoBai = paste(rep(QuanBai, each = 4), rep(Chat, times = 13))
  sample(x = BoBai, size = 2, replace = TRUE)
}
PhepThu()


### Exercise 2.3
PhepThu = function(n){
  sample(x = 1:6, size = n, replace = TRUE)
}
PhepThu(4)
PhepThu(24)



### Example 2.2
PhepThu = function() sample(x = c("Sap", "Ngua"), size = 3, replace = TRUE)
A = function() sum(PhepThu() == "Ngua") == 2
B = function() sum(PhepThu() == "Ngua") >= 2
C = function() PhepThu()[2] == "Ngua"
A()
B()
C()


### Exercise 2.4
PhepThu = function() sample(1:6, size = 2, replace = TRUE)
A = function() sum(PhepThu()) >9
B = function(){
  res = PhepThu()
  res[1] == res[2]
}
A()
B()



### Example 2.3
buA = function() !sum(PhepThu() == "Ngua") == 2
buC = function() !PhepThu()[2] == "Ngua"
AgiaoC = function() {
  res = PhepThu()
  sum(res == "Ngua") == 2 & res[2] == "Ngua"
} 
AhopC = function(){
  res = PhepThu()
  sum(res == "Ngua") == 2 | res[2] == "Ngua"
}
AhieuC = function() {
  res = PhepThu()
  sum(res == "Ngua") == 2 & !res[2] == "Ngua"
}
buA()
buC()
AgiaoC()
AhopC()
AhieuC()


### Exercise 2.5
PhepThu = function() sample(1:6, size = 2, replace = TRUE)
AgiaoB = function() {
  res = PhepThu()
  sum(res) > 9 & res[1] == res[2]
} 
AhopB = function() {
  res = PhepThu()
  sum(res) > 9 | res[1] == res[2]
} 
AhieuB = function() {
  res = PhepThu()
  sum(res) > 9 & !res[1] == res[2]
} 
BhieuA = function() {
  res = PhepThu()
  res[1] == res[2] & !sum(res) > 9 
}
buA = function() {
  res = PhepThu()
  !sum(res) > 9
} 
buB = function() {
  res = PhepThu()
  !res[1] == res[2]
} 
AgiaoB()
AhopB()
AhieuB()
BhieuA()
buA()
buB()



### Example 2.4
PhepThu = function() sample(x = c("Sap", "Ngua"), size = 10, replace = TRUE)
A = function() sum(PhepThu() == "Ngua") == 3
n = 10000
QuanTracA = replicate(n, A())
QuanTracA
mean(QuanTracA)



### Exercise 2.6
PhepThu = function(){
  x = c(rep("Do", 3), rep("Xanh", 7))
  sample(x, size = 2, replace = FALSE)
}
A = function() {
  x = PhepThu()
  x[1] == x[2] & x[1] == "Do"
}
B = function() {
  sum(PhepThu() == "Xanh") == 1
}
n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())
mean(QuanTracA)
mean(QuanTracB)



### Exercise 2.7
PhepThu = function(){
  QuanBai = c("K", "Q", "J", 10:2, "A")
  Chat = c("Cơ", "Rô", "Chuồn", "Bích")
  BoBai = paste(rep(QuanBai, each = 4), rep(Chat, times = 13))
  sample(BoBai, 2, replace = TRUE)
}
A = function() {
  x = PhepThu()
  strsplit(x[1], split = " ")[[1]][1] == strsplit(x[2], split = " ")[[1]][1]
}
n = 1000
QuanTracA = replicate(n, A())
mean(QuanTracA)



### Example 2.5
# Approach 1
experimentA = function(){
  rolls = sample(1:6, size = 4, replace = TRUE)
  condition = sum(rolls == 6) > 0
  return(condition)
}

experimentB = function(){
  first.die = sample(1:6, size = 24, replace = TRUE)
  second.die = sample(1:6, size = 24, replace = TRUE)
  condition = sum((first.die == second.die) & (first.die == 6)) > 0
  return(condition)
}

n = 10000
simsA = replicate(n, experimentA())
mean(simsA)
simsB = replicate(n, experimentB())
mean(simsB)

# Approach 2
PhepThu1 = function() sample(1:6, size = 4, replace = TRUE)
A = function() 6 %in% PhepThu1()

PhepThu2 = function() replicate(24, sample(1:6, size = 2, replace = TRUE))
B = function() any(apply(PhepThu2(), 2, function(x) all(x %in% c(6,6))))

n = 10000
QuanTracA = replicate(n, A())
QuanTracB = replicate(n, B())
mean(QuanTracA)
mean(QuanTracB)


### Example 2.6
PhepThu = function() sample(x = 1:365, size = 25, replace = TRUE)
A = function() anyDuplicated(PhepThu()) > 0 

n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)



### Example 2.7
PhepThu = function() x = runif(2, min = -1, max = 1)
A = function() sum(PhepThu()^2) <= 1
n = 1000000
QuanTracA = replicate(n, A())
p = mean(QuanTracA)

print(4*p)



### Example 2.8
## Approach 1
PhepThu = function() sample(1:6, 2, replace = TRUE)
AB = function() {
  res = PhepThu()
  (sum(res) >= 10) & (6 %in% res)
}

n = 10000
QuanTracAB = replicate(n, AB())
P.AB = mean(QuanTracAB)

B = function() 6 %in% PhepThu()
QuanTracB = replicate(n, B())
P.B = mean(QuanTracB)

P.AB/ P.B

## Approach 2
PhepThu = function() sample(1:6, 2, replace = TRUE)
PhepThuB = function() {
  res = PhepThu()
  if(6 %in% res) return(res) else PhepThuB()
}

A = function() sum(PhepThuB()) >=10
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)



### Example 2.9
## Approach 1
PhepThu = function() {
  ChonNgan = sample(x = 1:3, size = 1)
  if (ChonNgan == 1) ChonTien = sample(x = c("Vang", "Vang"), size = 1)
  if (ChonNgan == 2) ChonTien = sample(x = c("Bac", "Bac"), size = 1)
  if (ChonNgan == 3) ChonTien = sample(x = c("Vang", "Bac"), size = 1)
  ketquaPhepThu = c(ChonNgan, ChonTien)
  return(ketquaPhepThu)
}

# B = "Đồng tiền vàng"
B = function() "Vang" %in% PhepThu()
n = 1000
QuanTracB = replicate(n, B())
P.B = mean(QuanTracB)

# AB = "Chọn được ngăn có 2 đồng tiền vàng và rút được đồng tiền vàng"
AB = function() all(c("1", "Vang") %in% PhepThu())

n = 1000
QuanTracAB = replicate(n, AB())
P.AB = mean(QuanTracAB)

# P(A|B)
P.AB / P.B

## Approach 2
PhepThu = function() {
  ChonNgan = sample(x = 1:3, size = 1)
  if (ChonNgan == 1) ChonTien = sample(x = c("Vang", "Vang"), size = 1)
  if (ChonNgan == 2) ChonTien = sample(x = c("Bac", "Bac"), size = 1)
  if (ChonNgan == 3) ChonTien = sample(x = c("Vang", "Bac"), size = 1)
  ketquaPhepThu = c(ChonNgan, ChonTien)
  return(ketquaPhepThu)
}

# B = "Đồng tiền vàng"
PhepThuB = function() {
  kq = PhepThu()
  if("Vang" %in% kq) return(kq) else PhepThuB()
}

A = function() "1" %in% PhepThuB()
n = 1000
QuanTracA = replicate(n, A())
mean(QuanTracA)



### Exercise 2.8
Experiment = function() {
  CacCua = 1:3
  Xe = sample(CacCua, 1)
  ChonBanDau = sample(CacCua, 1)
  
  # Người dẫn chương trình mở một cửa có dê
  CuaChuaChon = CacCua[CacCua != ChonBanDau]
  CuaCoDe = CuaChuaChon[CuaChuaChon != Xe]
  CuaMo = CuaCoDe[sample(1:length(CuaCoDe), 1)]
  
  # Cửa còn lại nếu người chơi quyết định đổi
  CuaDoi = CacCua[CacCua != ChonBanDau & CacCua != CuaMo]
  
  # Kết quả của hai chiến lược
  GiuNguyen = (ChonBanDau == Xe)
  DoiCua = (CuaDoi == Xe)
  
  return(c(GiuNguyen, DoiCua))
}

n = 10000
KetQua = replicate(n, Experiment())
# Xác suất thắng khi giữ nguyên lựa chọn
P_Giu = mean(KetQua[1, ])
# Xác suất thắng khi đổi cửa
P_Doi = mean(KetQua[2, ])
cat("Xác suất thắng khi giữ cửa và đổi cửa lần lượt là", P_Giu, "và", P_Doi)

# Cách 2
PhepThu = function() {
  Xe = sample(1:3, 1)
  ChonBanDau = sample(1:3, 1)
  GiuNguyen = (ChonBanDau == Xe)
  DoiCua = !GiuNguyen
  
  return(c(GiuNguyen, DoiCua))
}


### (Bài toán Monty Hall tổng quát): Trong 1 trò chơi truyền hình ở Mỹ, người chơi
### đứng trước n cánh cửa. Phía sau một cánh cửa là một chiếc xe hơi, phía sau
### n-1 cánh cửa còn lại là các con dê. Đầu tiên người chơi chọn ngẫu nhiên một
### trong n cánh cửa. Sau đó, người dẫn chương trình sẽ mở k(điều kiện 1<= k <= n-2) 
###  trong n-1 cánh cửa còn lại có con dê phía sau. Lúc này người chơi sẽ đưa ra
###  quyết định có thay đổi lựa chọn ban đầu hay không.
### Dùng mô phỏng để tính xác suất chọn được cửa có xe hơi trong hai khả năng
### quyết định của người chơi.




### Example 2.10
PhepThu = function() sample(c("Sap", "Ngua"), 2, replace = TRUE)

A = function() sum(PhepThu() == "Ngua") <= 1
n = 10000
QuanTracA = replicate(n, A())
(P.A = mean(QuanTracA))

B = function() all(c("Sap", "Ngua") %in% PhepThu())
n = 10000
QuanTracB = replicate(n, B())
(P.B = mean(QuanTracB))

AB = function() {
  kq = PhepThu()
  (sum(kq == "Ngua") <= 1) & all(c("Sap", "Ngua") %in% kq)
}

n = 10000
QuanTracAB = replicate(n, AB())
P.AB = mean(QuanTracAB)

abs(P.AB - P.A * P.B) < 0.01 # TRUE = "độc lập"








### Exercise 2.9
PhepThu = function() sample(x = c("Sap", "Ngua"), size = 3, replace = TRUE)
A = function() {
  res = PhepThu()
  sum(res == "Ngua") > sum(res == "Sap")
}
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)


### Exercise 2.10
PhepThu = function() sample(1:6, 2, replace = TRUE)
A = function(){
  res = PhepThu()
  res[1] == 2*res[2] | res[2] == 2*res[1]
}

n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)

### Exercise 2.11
PhepThu = function() sample(1:8, 2, replace = TRUE)
A = function(){
  sum(PhepThu()) == 8
}
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)

### Exercise 2.12
PhepThu = function() sample(c(rep("nam" ,10), rep("nu",10)), size = 5, replace = FALSE)
A = function() sum(PhepThu()=="nam") == 5
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)

### Exercise 2.13
PhepThu = function() sample(c(rep("nam" ,10), rep("nu",10)), size = 5, replace = FALSE)
A = function() sum(PhepThu() == "nu") == 4
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)

### Exercise 2.14
PhepThu = function() sample(1:6, size = 2, replace = TRUE )
A = function(){
  x = PhepThu()
  abs(x[1]-x[2]) == 4  
}
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)

### Exercise 2.15
PhepThu = function() sample(1:6, size = 2, replace = TRUE)
AB = function() {
  res = PhepThu()
  (sum(res) >= 10) & (6 %in% res)
}
n = 10000
QuanTracAB = replicate(n,AB())
P.AB = mean(QuanTracAB)

B = function() 6 %in% PhepThu()
QuanTracB = replicate(n, B())
P.B = mean(QuanTracB)

P.AB / P.B


### Exercise 2.16
PhepThu = function() sample(x = c("Sap","Ngua"), size = 3, replace = TRUE)
D = function() sum(PhepThu() == "Ngua") >= 2
E = function(){
  x = PhepThu()
  x[1] == x[2] & x[2] == x[3] 
} 
n = 10000
QuanTracD = replicate(n, D())
P.D = mean(QuanTracD)
QuanTracE = replicate(n,E())
P.E = mean(QuanTracE)

P.D
P.E


### Exercise 2.17
PhepThu = function() sample(1:6, size = 2, replace = TRUE)
A = function(){
  x = PhepThu()
  x[2] == 2*x[1] | x[1] == 2*x[2] 
}
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)


### Exercise 2.18
PhepThu = function() sample(1:6, size = 2, replace = TRUE )
A = function(){
  x = PhepThu()
  abs(x[1]-x[2]) == 0  
}
B = function(){
  x = PhepThu()
  abs(x[1]-x[2]) == 4  
}
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)

QuanTracB = replicate(n, B())
mean(QuanTracB)


### Exercise 2.19
PhepThu = function() sample(1:8, size = 2, replace = TRUE)
# a)
A = function() sum(PhepThu()) == 8
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)
# b)
B = function() 2 %in% PhepThu()
QuanTracB = replicate(n, B())
mean(QuanTracB)


### Exercise 2.20
mau = c("Vang", "Do", "Cam", "Nau", "Xanh la", "Xanh duong")
p = c(0.14, 0.13, 0.2, 0.12, 0.2, 0.21)
PhepThu = function(n) {
  sample(mau, size = n, replace = TRUE, prob = p)
}
A = function() {
  x = PhepThu(1)
  x != "Xanh la" & x != "Xanh duong"
}
B = function() PhepThu(1) %in% c("Do", "Cam", "Vang")
C = function() any(PhepThu(4) == "Xanh duong")
D = function() length(unique(PhepThu(6))) == 6

# Hàm tính xác suất
Prob = function(BienCo, N = 10000) mean(replicate(N, BienCo()))

Prob(A)  # Question a
Prob(B)  # Question b
Prob(C)  # Question c
Prob(D)  # Question d



### Exercise 2.24
PhepThu = function() sample(x = c(rep("Nam", 10), rep("Nu", 10)), size = 5, replace = FALSE)
# a)
A = function() all(PhepThu() == "Nam")
QuanTracA = replicate(10000, A())
mean(QuanTracA)
# b)
B = function() sum(PhepThu() == "Nu") == 4
QuanTracB = replicate(10000, B())
mean(QuanTracB)


### Exercise 2.25
PhepThu = function() x = runif(2, min = -1, max = 1)
BienCo = function() sum(PhepThu()^2) <= 1
QuanTracBienCo = replicate(10000, BienCo())
p = mean(QuanTracBienCo)

cat("Xap xi so pi la ", 4*p)



### Ví dụ 2.3( xác suất đúng là 1/4)
PhepThu = function() sample(x = c("Sap", "Ngua"), size = 3, replace = TRUE)
## Cách trong sách
AgiaoC_method1 = function() {
  sum(PhepThu() == "Ngua") == 2 & PhepThu()[2] == "Ngua"
}
## Cách khác
AgiaoC_method2 = function() {
  x = PhepThu()
  sum(x == "Ngua") == 2 & x[2] == "Ngua"
} 

n = 10000
QuanTrac_AgiaoC_method1 = replicate(n, AgiaoC_method1())
QuanTrac_AgiaoC_method2 = replicate(n, AgiaoC_method2())
mean(QuanTrac_AgiaoC_method1)
mean(QuanTrac_AgiaoC_method2)



