type 'a stack

val new_stack : unit -> 'a stack
(** 新しいスタックを作成 **)
val push : 'a stack -> 'a -> unit
(** スタックに要素を追加 **)
val pop : 'a stack -> 'a
(** スタックから要素を取り出す **)