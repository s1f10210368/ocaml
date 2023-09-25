let rec gcd a b =
  if b = 0 then a
  else gcd b (a mod b)

let lcm a b =
  if a = 0 || b = 0 then 0
  else abs (a * b) / (gcd a b)


  関数一つで実装する場合

  let lcm a b =
    if a = 0 || b = 0 then 0
    else
      let rec find_lcm m =
        if m mod a = 0 && m mod b = 0 then m
        else find_lcm (m + 1)
      in
      find_lcm (max a b)