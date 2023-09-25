# let even_vs_odd a b c d e =
  let even_count = ref 0 in
  let odd_count = ref 0 in
  if a mod 2 = 0 then even_count := !even_count + 1 else odd_count := !odd_count + 1;
  if b mod 2 = 0 then even_count := !even_count + 1 else odd_count := !odd_count + 1;
  if c mod 2 = 0 then even_count := !even_count + 1 else odd_count := !odd_count + 1;
  if d mod 2 = 0 then even_count := !even_count + 1 else odd_count := !odd_count + 1;
  if e mod 2 = 0 then even_count := !even_count + 1 else odd_count := !odd_count + 1;
  !even_count > !odd_count;;