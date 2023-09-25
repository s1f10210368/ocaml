(* Lazy evaluation *)

open Delayed

module Delayed : sig
    type 'a delayed

type 'a delayed

val delay : (unit -> 'a) -> 'a delayed
val force : 'a delayed -> 'a
