type ibtree = Node of int * ibtree * ibtree
            | Leaf


//上記の定義をもとに、多相二分木型 'a btree を定義せよ
type 'a btree = Node of 'a * 'a btree * 'a btree
              | Leaf

let rec flatten (tree: 'a btree): 'a list = 
  match tree with
  | Leaf -> []
  | Node (value, left, right) -> flatten left @ [value] @ flatten right