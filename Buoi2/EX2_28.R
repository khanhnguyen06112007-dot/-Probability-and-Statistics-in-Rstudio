rm(list = ls())

Experiment = function(){
  CacCua = 1 : 3
  Xe = sample(CacCua, 1)
  ChonBanDau = sample(CacCua, 1)
  
  # Người dẫn chương trình mở một cửa không có dê
  CuaKhongCoDe = CacCua[CacCua != Xe & CacCua != ChonBanDau]
  CuaMo = CuaKhongCoDe[sample(length(CuaKhongCoDe), 1)]
  
  # Cửa còn lại nếu người chơi quyết định đổi
  CuaDoi = CacCua[CacCua != ChonBanDau & CacCua != CuaMo]
  
  # Kết quả của 2 chiến lược 
  GiuNguyen = (ChonBanDau == Xe)
  DoiCua = (CuaDoi == Xe)
  return (c(GiuNguyen, DoiCua))
}

n = 10000
KetQua = replicate(n, Experiment())
# Xác suất thắng khi đổi cửa
P_Doi = mean(KetQua[2, ])
print(P_Doi)
