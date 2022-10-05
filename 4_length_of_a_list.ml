(* 4. Length of a list *)
let rec len lst = 
  match lst with
  | [] -> 0
  | _ :: t -> 1 + len t

let len' lst =
  let rec aux n = function
    | [] -> n
    | _ :: t -> aux (n + 1) t
  in
  aux 0 lst