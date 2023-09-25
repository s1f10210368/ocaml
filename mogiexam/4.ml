type expr = 
  Add of expr * expr
  | Mul of expr * expr
  | Val of float
  | Var of string

let rec fold_const expr =
  match expr with
  | Add (left, right) -> (
      let folded_left = fold_const left in
      let folded_right = fold_const right in
      match (folded_left, folded_right) with
      | (Val a, Val b) -> Val (a +. b)
      | _ -> Add (folded_left, folded_right)
    )
  | Mul (left, right) -> (
      let folded_left = fold_const left in
      let folded_right = fold_const right in
      match (folded_left, folded_right) with
      | (Val a, Val b) -> Val (a *. b)
      | _ -> Mul (folded_left, folded_right)
    )
  | Val _ | Var _ as leaf -> leaf