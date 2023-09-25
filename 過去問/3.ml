以下の多相型 'a btree で定義される二分木 t と値 e を引数にとり、t の中に値 e が含まれるかどうかを真偽値として返す関数 contains t e を定義せよ

type 'a btree = 
    Node of 'a * 'a btree * 'a btree
  | Leaf
  
let rec contains t e =
  match t with
  Node(e', t1, t2) -> (e = e' || contains t1 e || contains t2 e)
  | Leaf -> false

