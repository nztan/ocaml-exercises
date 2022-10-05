(* 9. Pack consecutive duplicates *)

let pack lst =
  let rec aux acc = function
    | [] -> []
    | [x] -> x :: acc
    | h :: (h1 :: _ as t) ->
      if h = h1 then aux (h :: acc) t
      else aux [] t
  in aux [] lst


let pack' lst =
  let rec aux cur acc = function
    | [] -> []
    | [x] -> (x :: cur) :: acc
    | h :: (h1 :: _ as t) ->
      if h = h1 then aux (h :: cur) acc t
      else aux [] ((h :: cur) :: acc) t
  in aux [] [] lst