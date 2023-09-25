type hand =
    Rock       (* グー *)
  | Scissors   (* チョキ *)
  | Paper      (* パー *)

let janken myhand otherhand =
  match (myhand, otherhand) with
  | (Rock, Scissors) | (Scissors, Paper) | (Paper, Rock) -> true
  | _ -> false