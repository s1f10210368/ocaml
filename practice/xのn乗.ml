let rec power x n =
  if n = 0 then 1
  else if n < 0 then failwith "Exponent should be non-negative"
  else x * power x (n - 1)