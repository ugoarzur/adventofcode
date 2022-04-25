(* Day 1: Sonar Sweep https://adventofcode.com/2021/day/1 *)

(* Sonar sweep *)

let depths = [199;200;208;210;200;207;240;269;260;263]

let number_of_depths : int =
  let rec counter (lst: int list) (previous_depth: int) : int =
    match lst with
    | [] -> 0
    | h :: t ->
      if h >= previous_depth
      then 1 + (counter t) h
      else counter t h
  in counter depths 210;;