(* 8. Eliminate duplicates *)
let rec compress = function
  | h :: (h2 :: _ as t) -> 
    if h = h2 then compress t else h :: compress t
  | smaller -> smaller