rm(list = ls())

Phepthu = function(){
  QuanBai = c("A", 2:10, "J", "Q", "K")
  Chat = c("Co", "Ro", "Chuon", "Bich")
  BoBai = paste(rep(QuanBai, each = 4), rep(Chat, times = 13))
  sample(BoBai, 2, replace = TRUE)
}

A = function(){
  x = Phepthu()
  strsplit(x[1], split = " ")[[1]][1] == strsplit(x[2], split = " ")[[1]][1]
}
n = 10000
QuanTracA = replicate(n, A())
mean(QuanTracA)