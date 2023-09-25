open Delayed

module Delayed = struct
  type 'a delayed_status = 
    | Before of (unit -> 'a)
    | After of 'a

type 'a delayed_status = 
  Before of (uint -> a) (* 実行前 *)
  | After of 'a (* 実行後 *)

type 'a delayed = 'a delayed_status ref

let delay f = ref (Before f)

let force l = 
  match !l with
  Before(f) -> 
    let result = f() in
    l := After result;
    (* f()を実行した結果を持った実行後の状態をlに代入してから;
       f()の結果を返す *)
    result
  | After(v) -> v(* 計算済みの値を返す *)


       ┌─a─┐    ┌─ε─┐
  -> q0 ────> q1 ────> q2
        └─── b ────┘



             ┌─a─┐    ┌─b─┐
        -> q0 ────> q1 ────> q2
        

        