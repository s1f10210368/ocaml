# let rec pow a n = 
  let rec pow_tail a n acc = 
    if n <= 0 then acc
    else pow_tail a (n-1) (a*acc)
  in pow_tail a n 1