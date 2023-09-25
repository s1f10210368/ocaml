# let rec gcd x y = 
  if x = y then x
  else if x > y then gcd y x
  else gcd (y - x) x
  ;;