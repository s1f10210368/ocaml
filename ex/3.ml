//因数に与えられた文字列のリストの中から長さが３のものを抽出する関数を定義せよ

let rec collect3 lst = 
  match lst with
  | [] -> []
  | x ::xs ->
    if String.length x = 3 then
      x :: collect3 xs
    else
      collect3 xs

open List

let collect3 lst = 
  let is_collect3 lst = String.length lst = 3 in
  filter is_collect3 lst