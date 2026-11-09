rm(list = ls())
FormMatrix = function(x, y, z){
  x_size = length(x)
  y_size = length(y)
  z_size = length(z)
  if (x_size == y_size & y_size == z_size){
    data = c(x, y, z)
    nrows = x_size
    ncols = 3
    mat = matrix(data, nrow = nrows, ncol = ncols, byrow = FALSE)
    return (mat)
  }
  return (FALSE)
}

FormMatrix2 = function(x, y, z){
  x_size = length(x) 
  y_size = length(y)
  z_size = length(z)
  if (x_size == y_size & y_size == z_size){
    mat = cbind(x, y, z)
    return (mat)
  }
  return (FALSE)
}
x = c(1, 2, 3)
y = c("black", "red", "blue")
z = c("False", "True", TRUE)

mat = FormMatrix(x, y, z)
mat2 = FormMatrix2(x, y, z)
print(mat)
print(mat2)