type 'a stack = { mutable s : 'a list }

let new_stack () = { s = [] }

let push stack x = stack.s <- x :: stack.s

let pop stack =
  match stack.s with
  | [] -> failwith "Stack is empty"
  | x :: xs ->
      stack.s <- xs;
      x