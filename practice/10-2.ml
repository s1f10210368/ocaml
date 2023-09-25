//リストxsと正の整数nを引数に取り、xsのn番目の要素を取り除いたリストを返す関数を定義せよ

let rec remove xs n =
  match xs with
  | [] -> []
  | x :: rest ->
    if n = 1 then rest
    else x :: remove rest (n-1)
