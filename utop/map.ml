(* DRY - Abstraction Principle *)
let rec add1 = function
  | [] -> []
  | h :: t -> (h+1) :: add1 t

let rec concat3110 = function
  | [] -> []
  | h :: t -> (h ^ "3110") :: concat3110 t


(* Transform the lists no matter their type *)
let rec transform f = function
  | [] -> []
  | h :: t -> f h :: transform f t

(* polymorphism *)

let add1' lst = transform (fun x -> x + 1) lst
let concat3110 lst = transform (fun x -> x ^"3110") lst

let stringlist_of_intlist lst = transform string_of_int lst