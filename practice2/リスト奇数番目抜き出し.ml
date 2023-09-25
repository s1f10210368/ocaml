let rec extract_odd xs =
  match xs with
  | [] -> []
  | [x] -> [x] (* リストの要素が1つだけの場合、奇数番目として残す *)
  | x :: _ :: rest -> x :: extract_odd rest (* 奇数番目の要素を残す *)


  x :: _ :: rest ワイルドカード( _のこと )を用いてリストの2番目の要素を無視

let rec amax xs = 
  match xs with
  | [] -> []
  | [x] -> [x]