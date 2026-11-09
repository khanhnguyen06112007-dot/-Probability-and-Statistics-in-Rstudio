rm(list = ls())
set.seed(2026)
n = 10^5

experiment = function() {
  res = sample(1:365, size = 30, replace = TRUE)
  max(table(res)) >= 3
}

sims = replicate(n, experiment())
p = mean(sims)

print(p)