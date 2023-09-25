文字列のリスト words を受け取り、その中に含まれる各文字列を順に標準出力に表示する関数 plist : string list -> unit を定義せよ

let plist words = 
  match words with 
  | [] -> []
  | hd::tl -> hd::(print_endline words)
;;

let rec limit xs n = 
  match xs with
    hd::tl -> if n <= 0 then [] else hd::(limit tl (n-1))
  | [] -> [] 