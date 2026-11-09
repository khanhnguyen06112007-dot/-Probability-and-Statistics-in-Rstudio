
rm(list = ls())

tongbp = function(x, muy, sigma) {
  res = sum(((x - muy) / sigma)^2)
  return(res)
}

Vtongbp = Vectorize(tongbp, c("muy", "sigma"))

x = c(1, 2, 3, 4, 5)

ketqua = Vtongbp(
  muy = c(0, 1),
  sigma = c(1, 2),
  x = x
)

print(ketqua)
