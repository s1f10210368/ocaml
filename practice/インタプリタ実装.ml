type expression =
  | Add of expression * expression
  | Sub of expression * expression
  | Mul of expression * expression
  | Div of expression * expression
  | Val of int


  let rec eval expr =
    match expr with
    | Add (e1, e2) -> eval e1 + eval e2
    | Sub (e1, e2) -> eval e1 - eval e2
    | Mul (e1, e2) -> eval e1 * eval e2
    | Div (e1, e2) -> eval e1 / eval e2
    | Val x -> x