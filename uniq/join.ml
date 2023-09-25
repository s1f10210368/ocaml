let rec join = function
| [] -> ""
| [s] -> s
| s :: rest -> s ^ " " ^ (join rest)