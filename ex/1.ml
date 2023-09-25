//n以上m未満の整数の合計を計算する関数を定義せよ

1 末尾再帰を用いない場合

let rec sum n m =
  if n >= m then 0
  else n + sum (n+1) m

2 末尾再帰を用いる場合

let sum_tail n m =
  let rec aux n m acc = 
    if n >= m then acc
    else aux (n+1) m (acc+n)
  in
  aux n m 0
