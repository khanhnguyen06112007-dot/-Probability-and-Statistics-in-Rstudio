Phepthu = function(){
  sample(x = c("Sap", "Ngua"), size = 3, replace = TRUE)
}

A = function() sum(Phepthu() == "Ngua") == 2
B = function() sum(Phepthu() == "Ngua") >= 2
C = function() Phepthu()[2] == "Ngua"

A()
B()
C()