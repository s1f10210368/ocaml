type 'a btree =
  Node of 'a btree * 'a * 'a btree
| Leaf

let rec find_min bst =
  match bst with
  | Leaf -> failwith "Tree is empty"
  | Node (Leaf, x, _) -> x
  | Node (left, _, _) -> find_min left
