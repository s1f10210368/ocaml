type 'a btree =
  Node of 'a btree * 'a * 'a btree
| Leaf

let rec find_max bst =
  match bst with
  | Leaf -> failwith "Tree is empty"
  | Node (_, x, Leaf) -> x
  | Node (_, _, right) -> find_max right
