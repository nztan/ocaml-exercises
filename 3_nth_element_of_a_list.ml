
(* 3. N'th element of a list *)
let rec nth lst i =
  match lst with
  | [] -> None
  | h :: t -> 
    if i = 0 then Some h else nth t (i-1)
    