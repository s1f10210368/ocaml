type 'a btree =
Node of 'a btree * 'a * 'a btree
| Leaf

let rec max_bst tree =
match tree with
| Leaf -> failwith "Empty tree"
| Node (_, x, Leaf) -> x
| Node (_, _, right) -> max_bst right