(* 1. Tail of a list *) 
let rec last = function
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> last t

(* 2. Last two elements of a list *)
let rec last_two = function
  | [] | [ _ ] -> None 
  | [x1; x2] -> Some (x1, x2)
  | _ :: t -> last_two t

(* 3. N'th element of a list *)
let rec nth lst i =
  match lst with
  | [] -> None
  | h :: t -> 
    if i = 0 then Some h else nth t (i-1)
    
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

(* 5. Reverse a list *)
let reverse lst =
  let rec aux acc lst =
    match lst with
      | [] -> acc
      | h :: t -> aux (h :: acc) t
  in 
  aux [] lst

(* 6. Palindrome *)
let is_palindrome lst = lst = reverse lst

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

(* 8. Eliminate duplicates *)
let rec compress = function
  | h :: (h2 :: _ as t) -> 
    if h = h2 then compress t else h :: compress t
  | smaller -> smaller

(* 9. Pack consecutive duplicates *)

let pack lst =
  let aux current acc = function

in aux _ [] lst

(* let rec pack = function
  | h :: (h2 :: _ as t) -> 
    if h = h2 then  *)