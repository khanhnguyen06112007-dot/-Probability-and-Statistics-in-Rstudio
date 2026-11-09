rm(list = ls())
Test = function(){
  sample(x = c(rep("D", 3), rep("X", 7)), size = 2, replace = FALSE)
}

Test()