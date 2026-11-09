rm(list = ls())
Phepthu = function(){
  sample(1:6, size = 2, replace = TRUE)
}

A = function(ket_qua) sum(ket_qua) > 9

B = function(ket_qua){
  return (ket_qua[1] == ket_qua[2])
}

kq_chung = Phepthu()

gia_tri_A = A(kq_chung)
gia_tri_B = B(kq_chung)

AgiaoB = function(a, b) (a & b)
AhopB = function(a, b) (a | b)
AhieuB = function(a, b) (a & !b)
BhieuA = function(a, b) (b & !a)
BuA    = function(a, b) (!a)
BuB    = function(a, b) (!b)

# 5. Kiểm tra kết quả
cat("Kết quả tung 2 xúc xắc:", kq_chung, "\n")
cat("Biến cố A (tổng > 9):", gia_tri_A, "\n")
cat("Biến cố B (2 mặt giống nhau):", gia_tri_B, "\n\n")

cat("A giao B:", AgiaoB(gia_tri_A, gia_tri_B), "\n")
cat("A hợp B: ", AhopB(gia_tri_A, gia_tri_B), "\n")
cat("A hiệu B:", AhieuB(gia_tri_A, gia_tri_B), "\n")
cat("B hiệu A:", BhieuA(gia_tri_A, gia_tri_B), "\n")
cat("B bù A:  ", BuA(gia_tri_A, gia_tri_B), "\n")
cat("B bù B:  ", BuB(gia_tri_A, gia_tri_B), "\n")