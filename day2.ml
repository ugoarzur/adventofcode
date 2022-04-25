(* Day 2: Dive! https://adventofcode.com/2021/day/2 *)

type coordinates = {
  mutable horizontal: int;
  mutable depth: int;
}

let position: coordinates = {
  horizontal = 0;
  depth = 0;
}

let rec navigate (direction:string) (amount:int) : unit =
  match direction with
  | "forward" -> position.horizontal <- (position.horizontal + amount)
  | "down" -> position.depth <- (position.depth + amount)
  | "up" -> position.depth <- (position.depth - amount)
  | _ -> ();;


navigate "forward" 5 ;;
navigate "down" 5 ;;
navigate "forward" 8 ;;
navigate "up" 3 ;;
navigate "down" 8 ;;
navigate "forward" 2 ;;

let final_pos : int = position.horizontal * position.depth;;

Stdlib.string_of_int position.horizontal;;
Stdlib.string_of_int position.depth;;

Stdlib.string_of_int final_pos;;
