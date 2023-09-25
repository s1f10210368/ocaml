引数に与えたリスト xs から、先頭の n 個分の要素からなるリストを返す関数 limit xs n を定義せよ

let rec limit xs n = 
  match xs with
    hd::tl -> if n <= 0 then [] else hd::(limit tl (n-1))
  | [] -> [] 


  hd -> リストの先頭
  tl -> リストの先頭要素を除いた残りの要素

  最下行に空リストの場合の処理