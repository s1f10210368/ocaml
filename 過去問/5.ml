以下のように定義された Python の式を表す型 expr で表される式を評価し、計算結果を返す関数 eval : expr -> value を定義せよ

exception Type_mismatch

type value =
    String of string    (* 文字列値 *)
  | Int of int          (* 整数値 *)

type expr = 
    Add of expr * expr  (* a + b *)
  | Sub of expr * expr  (* a - b *)
  | Const of value      (* 定数値 *)

  let rec eval e =
    match e with
    Add(e1, e2) ->
    begin
    match eval e1, eval e2 with
    Int(i1), Int(i2) -> Int(i1 + i2)
    | String(s1), String(s2) -> String(s1 ^ s2)
    | _ -> raise Type_mismatch
    end
    | Sub(e1, e2) ->
    begin
    match eval e1, eval e2 with
    Int(i1), Int(i2) -> Int(i1 - i2)
    | _ -> raise Type_mismatch
    end
    | Const(v) -> v