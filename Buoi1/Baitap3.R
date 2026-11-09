FormMatrix = function(a, b, c){
  n1 = length(a)
  n2 = length(b)
  n3 = length(c)
  if (n1 == n2 & n2 == n3){
    row = n1
    col = 3
    cells = c(a, b, c)
    a = matrix(cells, nrow = row, ncol = col, byrow = FALSE)
    return (a)
  }
  return (FALSE)
}

x = c(1, 2, 3)
y = c(2, 3, 4)
z = c('c', 'd', 'g')

a = FormMatrix(x, y, z)
print(a)