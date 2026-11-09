rm(list = ls())
Coin = c("Xu 1", "Xu 2", "Xu 3")
MatSap = c(0.5, 0.6, 0.8)

MoPhongMotLan = function() {
  x = sample(Coin, size = 1)
  p_ngua = if(x == "Xu 1") 1 - 0.5 else if(x == "Xu 2") 1 - 0.6 else 1 - 0.8

  ket_qua_tung = sample(c(TRUE, FALSE), size = 5, replace = TRUE, prob = c(p_ngua, 1 - p_ngua))
  
  # 3. Đếm số mặt ngửa trong 5 lần tung
  so_mat_ngua = sum(ket_qua_tung)
  
  # Kiểm tra điều kiện: đúng 4 mặt ngửa
  la_4_ngua = (so_mat_ngua == 4)
  
  # Kiểm tra điều kiện: có phải là đồng xu thứ 3 không
  la_xu_3 = (x == "Xu 3")
  
  # Trả về vector logic gồm: [1] có phải 4 mặt ngửa không, [2] vừa là xu 3 vừa là 4 mặt ngửa không
  return(c(la_4_ngua, la_xu_3 && la_4_ngua))
}

# Chạy mô phỏng N lần bằng replicate
n = 1000000
KetQua = replicate(n, MoPhongMotLan())

so_lan_4_ngua = sum(KetQua[1, ])
so_lan_xu3_va_4_ngua = sum(KetQua[2, ])

xac_suat = so_lan_xu3_va_4_ngua / so_lan_4_ngua

cat("Xác suất thực nghiệm đồng xu được chọn là đồng xu thứ 3:", xac_suat, "\n")