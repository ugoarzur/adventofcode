(* Record or variant ?
   Variant- one-of: A coin could be a penny, nickel, dime or quarter
   Record - each-of: A student who has a name and id number
   Record - each-of: A dessert, wich has a sauce a creamy component and crunchy comp
*)

(* Variant aka tagged union *)
type string_or_int =
  | String of string
  | Int of int

type blue_or_pink_int =
  | Blue of int
  | Pink of int

