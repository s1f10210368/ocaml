# let  rec length lst = 
  match lst with
  | [] -> 0
  | _ :: tail -> 1 + length tail
