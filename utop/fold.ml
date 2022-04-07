(* Combine *)

let rec sum = function
  | [] -> 0
  | h :: t -> h + sum t

let rec concat = function
  | [] -> ""
  | h :: t -> h ^ concat t

(* sum & concat have the same shape but switch on operators
  Let's combine elements no matter their type
*)

let rec combine init op = function
  | [] -> init
  | h :: t -> op h (combine init op t)

let sum' lst = combine 0 ( + ) lst
let concat' lst = combine "" ( ^ ) lst