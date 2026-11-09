rm(list = ls())
Phepthu = function(){
  number = c("A", 2:10 , "J", "Q", "K")
  Char = c("Cơ", "Rô", "Chuồn", "Bích")
  
  number_new = rep(number, each = 4)
  Char_new = rep(Char, times = 13)
  card = paste(number_new, Char_new, sep = " ")
  
  sample(card, size = 2, replace = FALSE)
}

Phepthu()