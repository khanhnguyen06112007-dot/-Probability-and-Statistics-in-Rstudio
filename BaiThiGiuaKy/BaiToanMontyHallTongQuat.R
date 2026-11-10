###############################################################################
# (Bài toán Monty hall tổng quát): Trong một trò chơi truyền hình ở Mỹ, người chơi
# đứng trước N cánh cửa, phía sau 1 cánh cửa là 1 chiếc xe hơi, phía sau n - 1 cánh
# cửa còn lại là các con dê, đầu tiên người chơi chọn ngẫu nhiên 1 trong n cánh cửa
# Sau đó người dẫn chương trình sẽ mở k (1 <= k <= n - 2) trong n - 1 cánh cửa 
# còn lại có con dê phía sau. Lúc này người chơi sẽ đưa ra quyết định có thay đổi
# lựa chọn ban đầu hay không. Dùng mô phỏng để tính xác suất chọn được cửa có xe 
# hơi trong hai khả năng quyết định của người chơi
###############################################################################
rm(list = ls())
Experiment = function(n, k){
  CacCua = 1:n
  CuaCoXe = sample(CacCua, 1)
  CuaChonBanDau = sample(CacCua, 1)
  
  CuaChuaChon = CacCua[CacCua != CuaChonBanDau]
  CuaCotheMo = CuaChuaChon[CuaChuaChon != CuaCoXe]
  # mở k cánh cửa không có xe
  CuaMo = sample(CuaCotheMo, size = k)
  DoiCua = sample(CacCua[CacCua != CuaMo & CacCua != CuaChonBanDau], 1)
  
  GiuNguyen = (CuaChonBanDau == CuaCoXe)
  QuyetDinhDoi = (DoiCua == CuaCoXe)
  return (c(GiuNguyen, QuyetDinhDoi))
}

n = 10000
ketqua = replicate(n, Experiment(3, 1))
P_giu = mean(ketqua[1, ])
P_doi = mean(ketqua[2, ])

cat(P_giu)
cat(P_doi)



###############################################################################
# Bài 1: lấy ngẫu nhiên từ bài 1 đến bài 5 thầy gửi cho mình                   
# có 10 câu trắc nghiệm                                                       

# Bai1
# Mot cây que được bẻ ngẫu nhiên thành 3 khúc. Tính xác suất để 3 khúc đó tạo
# thành 1 tam giác
###############################################################################
rm(list = ls())
PhepThu = function(){
  res = runif(2, 0, 1)
  if (res[1] > 0 & res[1] < res[2] & res[2] < 1){
    return (res)
  }
  else{
    PhepThu()
  }
}
A = function(){
  res = PhepThu()
  L1 = res[1]
  L2 = res[2] - res[1]
  L3 = 1 - res[2]
  return ((L1 < L2 + L3) & (L2 < L1 + L3) & (L3 < L1 + L2))
}
BienCoA = replicate(10000, A())
P_A = mean(BienCoA)
cat("RESULT: ", P_A)



###############################################################################
# Bài 2: Chọn ngẫu nhiên ba điểm trên một đường tròn. Tính xác suất 3 điểm đó 
# nằm trong cùng một nửa đường tròn
###############################################################################
rm(list = ls())
PhepThu = function(){
  res = runif(3, min = 0, max = 2 * pi)
  if (all(res != 2 * pi))
    return (res)
  else
    PhepThu()
}
A = function(){
  res = PhepThu()
  res = sort(res)
  d1 = res[2] - res[1]
  d2 = res[3] - res[2]
  d3 = 2*pi - res[3] + res[1]
  return (d1 >= pi | d2 >= pi | d3 >= pi)
}
BienCoA = replicate(10000, A())
P_A = mean(BienCoA)
cat("RESULT: ", P_A)



###############################################################################
# Bài 3: Cho một hình tròn bán kính 1. Chọn ngẫu nhiên một điểm trong hình tròn.
# Tính xác suất điểm đó nằm trong hình vuông nội tiếp hình tròn
###############################################################################
rm(list = ls())
PhepThu = function(){
  res = runif(2, -1, 1)
  if (res[1]^2 + res[2]^2 <= 1)
    return (res)
  else
    PhepThu()
}
A = function(){
  res = PhepThu()
  return ((abs(res[1]) <= 1/sqrt(2)) & (abs(res[2]) <= 1/sqrt(2)))
}
BienCoA = replicate(10000, A())
P_A = mean(BienCoA)
cat("RESULT: ", P_A)



###############################################################################
# Bài 4: Một bộ bài có 52 lá bài gồm 13 quân bài K, Q, J, 10, 9, 8, 7, 6, 5, 4, 3
# 2, A, mỗi quân bài có 4 chất cơ rô chuồn và bích. Rút ngẫu nhiên 5 lá bài từ bộ
# bài không hoàn lại. Tính xác suất trong 5 lá có đúng 1 đôi(cùng số, khác chất)
###############################################################################

### *Chép không kịp* ###

###############################################################################
# Bài 5: Chọn ngẫu nhiên 5 số từ tập hợp các số nguyên từ 1 đến 20, không hoàn
# lại. Tính xác suất có 2 số liên tiếp
###############################################################################
rm(list = ls())
PhepThu = function() sample(1:20, size = 5, replace = FALSE)
A = function(){
  res = PhepThu()
  res = sort(res)
  for (i in 1:4){
    if (res[i] + 1 == res[i + 1])
      return (TRUE)
  }
  return (FALSE)
}
BienCoA = replicate(10000, A())
P_A = mean(BienCoA)
cat("RESULT: ", P_A)



###############################################################################
# Bài 5: Chọn ngẫu nhiên 5 số từ tập hợp các số nguyên từ 1 đến 20, không hoàn
# lại. Tính xác suất có 2 số liên tiếp
###############################################################################
rm(list = ls())
PhepThu = function() sample(1:20, size = 5, replace = FALSE)
A = function(){
  res = PhepThu()
  res = sort(res)
  for (i in 1:4){
    if (res[i] + 1 == res[i + 1])
      return (TRUE)
  }
  return (FALSE)
}
BienCoA = replicate(10000, A())
P_A = mean(BienCoA)
cat("RESULT: ", P_A)
