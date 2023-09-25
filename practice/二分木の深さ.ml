type 'a btree = 
  Node of 'a btree * 'a * 'a btree
| Leaf
;;

let rec depth t = 
  match t with
  Node(_, t1, t2) ->
    1 + max (depth t1) (depth t2)
  | Leaf -> 0;;