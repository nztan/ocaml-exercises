(* 2. Last two elements of a list *)
let rec last_two = function
  | [] | [ _ ] -> None 
  | [x1; x2] -> Some (x1, x2)
  | _ :: t -> last_two t