type 'a btree =
    Node of 'a * 'a btree * 'a btree
  | Leaf

let dfs bst = 
  match bst with
  | Leaf -> 0
  | Node(_, x, Leaf) -> x
  | Node(_, _, y) -> dfs y
;;


  let rec find_max bst =
    match bst with
    | Leaf -> failwith "Tree is empty"
    | Node (_, x, Leaf) -> x
    | Node (_, _, right) -> find_max right