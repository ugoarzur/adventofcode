(* Pattern Matching *)
let x =
  match not true with
  | true -> "yep"
  | false -> "nope";;

let y =
  match 42 with
  | a -> a;;
(* Infers 42 as a response *)

let z =
  match "foo" with
  | "bar" -> 0
  | _ -> 1;;


let a =
  match [1;2] with
  | [] -> "empty"
  | _ -> "not empty";;

let b =
  match ["taylor"; "swift"] with
  | [] -> "folklore"
  | h :: t -> h;;

(*
  h :: t stands for head and tail for the list we are testing
  so here h is head (ie: taylor)
  and here t is tail (ie: "swift")
  notice that we are looking for a string and the tail is returning a list of one string.
  https://youtu.be/AkrlDpHN_zE?t=454
*)

let empty (lst : list) = function
  | [] -> true
  | _ -> false;;

let rec sum lst =
  match lst with
  | [] -> 0
  | h :: t -> h + sum t;;

let rec length lst =
  match lst with
  | [] -> 0
  | h :: t -> 1 + length t;;

(* example usage
   append [1;2;3] [4;5;6] is [1;2;3;4;5;6] *)
let rec append lst1 lst2 =
  match lst1 with
  | [] -> lst2
  | h :: t -> h :: (append t lst2);;

let fst3 t =
  match t with
  | (a, b, c) -> a;;

let bad_empty lst =
  match lst with
  | [] -> true
  | _ -> false;;

let rec bad_sum lst =
  match lst with
  | [] -> 0
  | h :: t -> h + bad_sum t

let rec bad_sum' lst =
  List.hd lst + bad_sum' (List.tl lst)
(*
  Exception: Failure "tl".
  It's better to use pattern matchin than using List hd and tl functions from StdLib
*)