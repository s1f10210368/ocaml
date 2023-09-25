以下の関数を末尾再帰となるように書き換えよ
let rec remove_zero numbers = 
  match numbers with
    0::tl -> remove_zero tl
  | hd::tl -> hd::(remove_zero tl)
  | [] -> []


let rec remove_zero numbers = 
  let rec remove_zero_iter result nums = 
    match nums with
      0::tl -> remove_zero_iter result tl
    | hd::tl-> remove_zero_iter (hd:result) tl
    | [] -> result
  in List.rev (remove_zero_iter [] numbers)