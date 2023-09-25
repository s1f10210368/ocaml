# let isprime n =
  if n <= 1 then
    false
  else if n = 2 then
    true
  else if n mod 2 = 0 then
    false
  else
    let rec loop i =
      if i * i > n then
        true
      else if n mod i = 0 then
        false
      else
        loop (i + 2)
    in loop 3