rm(list = ls())
### Example 2.1
PhepThu1 = function(){
  sample(x = c("Sap", "Ngua"), size = 1, replace = TRUE) # replace = TRUE, lay co hoan lai
}
PhepThu2 = function(){
  sample(x = c("Sap", "Ngua"), size = 10, replace = FALSE) #replace = FALSE, lay khong hoan lai, truong hop nay loi
}
PhepThu3 = function(){
  sample(x = c("Sap", "Ngua"), size = 10, replace = TRUE)
}

PhepThu1()
#PhepThu2()
PhepThu3()
