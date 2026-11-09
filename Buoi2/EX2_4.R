rm(list = ls())
Phepthu = function(){
  sample(1:6, size = 2, replace = TRUE)
}

A = function() sum(Phepthu()) > 9
B = function(){
  c = Phepthu()
  return (c[1] == c[2])
}

A()
B()