# let fib2 n = 
  let rec fib_tail n acc1 acc2 = 
    if n <= 0 then acc1
    else fib_tail (n-1) acc2 (acc1+acc2)
  in fib_tail n 0 1