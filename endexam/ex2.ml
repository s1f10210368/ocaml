浮動小数のリスト xs を引数にとり、その中に含まれる数値の正負を反転させたリストを返す関数 inv : float list -> float list を定義せよ

let inv xs = 
  match xs with
  | _ -> float_of_int (-1) *. xs[]
;;