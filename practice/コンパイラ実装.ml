type expression =
  | Number of int
  | Plus of expression * expression
  | Minus of expression * expression
  | Times of expression * expression
  | Divide of expression * expression

type instruction =
  | Push of int
  | Add
  | Sub
  | Mul
  | Div

let rec compile expr =
  match expr with
  | Number n -> [Push n]
  | Plus (e1, e2) -> (compile e1) @ (compile e2) @ [Add]
  | Minus (e1, e2) -> (compile e1) @ (compile e2) @ [Sub]
  | Times (e1, e2) -> (compile e1) @ (compile e2) @ [Mul]
  | Divide (e1, e2) -> (compile e1) @ (compile e2) @ [Div]
