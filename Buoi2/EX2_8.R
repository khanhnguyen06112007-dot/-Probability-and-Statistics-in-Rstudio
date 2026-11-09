rm(list = ls())

so_lan_choi <- 10000

choi_monty_hall <- function(doi_cua = TRUE) {
  # Có 3 cánh cửa: 1, 2, 3
  cua_co_xe <- sample(1:3, 1)     # Xe hơi ngẫu nhiên sau 1 trong 3 cửa
  cua_nguoi_chon <- sample(1:3, 1) # Người chơi chọn ngẫu nhiên 1 cửa ban đầu
  
  # Người dẫn chương trình (Monty) mở 1 cửa còn lại chứa con dê
  # Monty không thể chọn cửa có xe và không thể chọn cửa người chơi đã chọn
  cua_con_lai <- setdiff(1:3, c(cua_co_xe, cua_nguoi_chon))
  if (length(cua_con_lai) > 1) {
    cua_monty_mo <- sample(cua_con_lai, 1)
  } else {
    cua_monty_mo <- cua_con_lai
  }
  
  # Xác định kết quả dựa trên việc người chơi có đổi cửa hay không
  if (doi_cua) {
    # Cửa đổi là cửa không phải cửa ban đầu và không phải cửa Monty đã mở
    cua_doi <- setdiff(1:3, c(cua_nguoi_chon, cua_monty_mo))
    thang <- (cua_doi == cua_co_xe)
  } else {
    # Giữ nguyên cửa ban đầu
    thang <- (cua_nguoi_chon == cua_co_xe)
  }
  
  return(thang)
}

# --- CHẠY MÔ PHỎNG ---

# 1. Trường hợp CHIẾN LƯỢC ĐỔI CỬA
ket_qua_doi <- replicate(so_lan_choi, choi_monty_hall(doi_cua = TRUE))
ty_le_thang_doi <- sum(ket_qua_doi) / so_lan_choi

# 2. Trường hợp CHIẾN LƯỢC GIỮ NGUYÊN CỬA
ket_qua_giu <- replicate(so_lan_choi, choi_monty_hall(doi_cua = FALSE))
ty_le_thang_giu <- sum(ket_qua_giu) / so_lan_choi

# --- IN KẾT QUẢ RA MÀN HÌNH ---
cat("--- KẾT QUẢ MÔ PHỎNG MONTY HALL (", so_lan_choi, " ván chơi) ---\n", sep = "")
cat(paste("Tỷ lệ thắng khi ĐỔI CỬA:   ", round(ty_le_thang_doi * 100, 2), "%\n", sep = ""))
cat(paste("Tỷ lệ thắng khi GIỮ CỬA:   ", round(ty_le_thang_giu * 100, 2), "%\n", sep = ""))