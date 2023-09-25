# let rec fib1 n = 
  match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> fib1(n-1) + fib1(n-2)