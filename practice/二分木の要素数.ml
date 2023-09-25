type 'a btree = 
  Node of 'a btree * 'a * 'a btree
| Leaf
;;

# let rec count_bst tree = 
  match tree with
  | Leaf -> 0
  | Node (left, _, right) -> 1 + count_bst left + count_bst right
;;



