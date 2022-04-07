(* Recursive and parameterized variants *)

type inList =
  | Nil
  | Cons of int * inList

let rec length = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length t

type stringList =
  | Nil
  | Cons of string * inList

let rec length_stringList = function
  | Nil -> 0
  | Cons (_, t) -> 1 + length_stringList t

type 'a myList =
  | Nil
  | Cons of 'a * 'a myList

let rec length = function
  | [] -> 0
  | _ :: t -> 1 + length t