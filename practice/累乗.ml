# let rec pow a n = 
  if n <= 0 then 1
  else a * pow a (n - 1);;