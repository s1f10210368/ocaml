let rec apply f n =
  if n <= 0 then
    fun x -> x
  else
    fun x -> apply f (n - 1) (f x)


  let mysqrt a =
    let f x = 0.5 *. (x +. a /. x) in
    let init_guess = 1.0 in
    let n = 10 in
    let sqrt_approx = apply f n in
    sqrt_approx init_guess