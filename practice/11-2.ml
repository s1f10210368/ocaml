type pyvalue =
    IntVal of int
  | StrVal of string
  | FloatVal of float

type pytype =
    IntType
  | StrType
  | FloatType

type pyexpr =
    Add of pyexpr * pyexpr  (* e1 + e2 *)
  | Mul of pyexpr * pyexpr  (* e1 * e2 *)
  | Value of pyvalue

let rec eval_expr = function
    Add(e1, e2) ->
    begin
      match eval_expr e1, eval_expr e2 with
        IntVal(v1), IntVal(v2) -> IntVal(v1 + v2)
      | FloatVal(v1), FloatVal(v2) -> FloatVal(v1 +. v2)
      | StrVal(v1), StrVal(v2) -> StrVal(v1 ^ v2)
      | _ -> failwith "type error"
    end
  | Mul(e1, e2) ->
    begin
      match eval_expr e1, eval_expr e2 with
        IntVal(v1), IntVal(v2) -> IntVal(v1 * v2)
      | FloatVal(v1), FloatVal(v2) -> FloatVal(v1 *. v2)
      | IntVal(n), StrVal(s) | StrVal(s), IntVal(n) -> failwith "not implemented"
      | _ -> failwith "type error"
    end
  | Value(v) -> v

let rec type_expr = function
    Add(e1, e2) ->
    begin
      match type_expr e1, type_expr e2 with
        IntType, IntType -> IntType
      | FloatType, FloatType -> FloatType
      | StrType, StrType -> StrType
      | _ -> failwith "type error"
    end
  | Mul(e1, e2) ->
    begin
      match type_expr e1, type_expr e2 with
        IntType, IntType -> IntType
      | FloatType, FloatType -> FloatType
      | IntType, StrType | StrType, IntType -> StrType
      | _ -> failwith "type error"
    end
  | Value(IntVal(_)) -> IntType
  | Value(StrVal(_)) -> StrType
  | Value(FloatVal(_)) -> FloatType

let t1 = type_expr (Add(Value(IntVal(1)), Value(IntVal(2))))
let t2 = type_expr (Add(Value(IntVal(3)), Value(StrVal("abc"))))
let t3 = type_expr (Add(Value(FloatVal(1.5)), Value(FloatVal(2.7))))
