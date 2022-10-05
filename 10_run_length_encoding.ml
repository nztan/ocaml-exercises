(* 10. Run-length encodingRun-length encoding *)

let encode lst = 
  let rec aux count acc = function
    | [] -> []
    | h :: (h2 :: _ as t) ->
      if h = h2 then aux count + 1 t else 
  in aux 0 [] lst 