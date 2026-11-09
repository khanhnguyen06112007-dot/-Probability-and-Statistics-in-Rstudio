rm(list = ls())
formDATAFRAME = function(ID, Name, Score, Passed){
  Passed = Score >= 5
  df = data.frame(ID,Name, Score, Passed)
  return (df)
}

ID = c (1, 2, 3)
Name = c("Khanh" , "Duc", "Nguyen")
Score = c(9.8, 8.7, 10.0)
Passed = c(1, 2, 3)

df = formDATAFRAME(ID, Name, Score, Passed)
print(df)

