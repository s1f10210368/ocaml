type 'a btree = 
  Node of 'a btree * 'a * 'a btree
| Leaf
;;

let rec min_bst = function
  | Leaf -> failwith "None"
  | Node (Leaf, x, _) -> x
  | Node (left, _, _) -> min_bst left
;;

  
min_bst (Node(8, Node(3, Node(1, Leaf, Leaf), Leaf, Node(10, Leaf, Leaf))));;