# (Bài toán Monty hall tổng quát): Trong một trò chơi truyền hình ở Mỹ, người chơi
# đứng trước N cánh cửa, phía sau 1 cánh cửa là 1 chiếc xe hơi, phía sau n - 1 cánh
# cửa còn lại là các con dê, đầu tiên người chơi chọn ngẫu nhiên 1 trong n cánh cửa
# Sau đó người dẫn chương trình sẽ mở k (1 <= k <= n - 2) trong n - 1 cánh cửa 
# còn lại có con dê phía sau. Lúc này người chơi sẽ đưa ra quyết định có thay đổi
# lựa chọn ban đầu hay không. Dùng mô phỏng để tính xác suất chọn được cửa có xe 
# hơi trong hai khả năng quyết định của người chơi

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
ketqua = replicate(n, Experiment(5, 1))
P_giu = mean(ketqua[1, ])
P_doi = mean(ketqua[2, ])

cat(P_giu)
cat(P_doi)