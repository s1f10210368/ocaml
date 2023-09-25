let rec sum xs = 
  match xs with
    hd::tl -> hd + (sum tl)
  | [] -> 0;;


上記の関数を末尾再帰にする

let sum xs =
  let rec sum_tail acc xs =
    match xs with
    | hd :: tl -> sum_tail (acc + hd) tl
    | [] -> acc
  in
  sum_tail 0 xs
