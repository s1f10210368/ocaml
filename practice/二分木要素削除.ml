type 'a btree =
  Node of 'a btree * 'a * 'a btree
| Leaf

(* 二分木から要素を削除する関数 *)
let rec remove tree value =
  match tree with
  | Leaf -> Leaf (* 葉ノードなので要素はないので何もせずにそのまま返す *)
  | Node (left, v, right) ->
    if value = v then (* もし現在のノードの値が削除対象の値と一致したら *)
      match left, right with
      | Leaf, _ -> right (* 左の部分木が空なら、右の部分木を返す *)
      | _, Leaf -> left  (* 右の部分木が空なら、左の部分木を返す *)
      | _, _ ->
        (* 左右の部分木がともに存在する場合、右の部分木を探索し、最小の要素を取得し、その値と右の部分木を持つ新しいノードを作成 *)
        let min_value, right_without_min = get_min right in
        Node (left, min_value, remove right_without_min min_value)
    else if value < v then (* 削除対象の値が現在のノードの値より小さい場合は左の部分木を再帰的に探索 *)
      Node (remove left value, v, right)
    else (* 削除対象の値が現在のノードの値より大きい場合は右の部分木を再帰的に探索 *)
      Node (left, v, remove right value)

(* 二分木のノードから最小の要素と、最小の要素を削除した後の部分木を取得する補助関数 *)
and get_min tree =
  match tree with
  | Leaf -> failwith "Empty tree"
  | Node (Leaf, v, right) -> (v, right) (* 左の部分木が空なら、現在のノードが最小の要素 *)
  | Node (left, v, right) ->
    let min_value, left_without_min = get_min left in
    (min_value, Node (left_without_min, v, right))

(* テスト *)
let example_tree =
  Node (Node (Leaf, 5, Leaf), 10, Node (Leaf, 15, Node (Leaf, 20, Leaf)))

let result_tree = remove example_tree 15

(* 10
   / \
  5  20 *)
