(* Exceptions are variants *)
type exn
(* exn is a built-in extensible variant
   We can add constructors with exception definition
*)

exception ABadThing
exception OhNo of string

(* exn is extensible
   raise (ABadThing);;
   raise (OhNo "Oops");;
   raise : exn -> 'q;;
*)

(*
failwith : string -> 'a
failwith "Whoopsies"
invalid_arg : string -> 'a *)

let save_div x y =
  try x / y with
  | Division_by_zero -> 0