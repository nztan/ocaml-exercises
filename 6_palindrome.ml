  (* 6. Palindrome *)
let reverse lst =
  let rec aux acc lst =
    match lst with
      | [] -> acc
      | h :: t -> aux (h :: acc) t
  in 
  aux [] lst

let is_palindrome lst = lst = reverse lst