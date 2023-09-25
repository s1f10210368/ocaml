# let deriv f = 
  let dx = 0.0001 in
  fun x -> (f(x + dx) - f x) / dx