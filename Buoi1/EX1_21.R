rm(list = ls())

lay_ten_cot_so <- function(df) {
  kiem_tra_so <- sapply(df, is.numeric)
  ten_cot_so <- names(df)[kiem_tra_so]
  return(ten_cot_so)
}

df_mau <- data.frame(
  id = c(1, 2, 3),                     
  ten = c("Khanh", "Duc", "Nguyen"),      
  tuoi = c(20, 22, 19),               
  da_tot_nghiep = c(TRUE, FALSE, TRUE),
  diem_tb = c(8.5, 7.2, 9.0)           
)

cot_so <- lay_ten_cot_so(df_mau)
print(df_mau)
print(cot_so)