//引数に渡されたリストに含まれる数の合計を計算する関数を定義

1 構造的再起に基づく実装

let rec sigma lst = 
  match lst with
  | [] -> 0
  | x :: xs -> x + sigma xs

2 末尾再帰を用いる場合

let sigma_tail lst = 
  let rec sigma acc lst = 
    match lst with
    | [] -> acc
    | x :: xs -> sigma (acc+x) xs
  in
  sum 0 lst