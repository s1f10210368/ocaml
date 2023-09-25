type 'a btree = 
  Node of 'a btree * 'a * 'a btree
| Leaf
;;


let rec append_bst x = function
  | Empty -> Node (Empty, x, Empty)
  | Node (left, y, right) when x < y -> Node (append_bst x left, y, right)
  | Node (left, y, right) when x > y -> Node (left, y, append_bst x right)
  | tree -> tree (* already contains x *)