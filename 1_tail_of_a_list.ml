(* 1. Tail of a list *) 
let rec last = function
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> last t


