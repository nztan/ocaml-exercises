(* 7. Flattern a list *)
type 'a node =
  | One of 'a 
  | Many of 'a node list

let flattern lst = 
begin
  let rec aux acc = function
    | [] -> acc
    | One h :: t -> h :: aux acc t
    | Many l :: t -> aux (aux acc l) t
  in aux [] lst
end