(* https://www.youtube.com/watch?v=E3d1IFMU558&list=PLre5AT9JnKShBOPeuiD9b-I4XROIJhkIU&index=25 *)
type student = {
  name: string;
  year: int;
  nickname: string;
}

let rbg : student = {
  name = "Ruth Bader";
  year = 1954;
  nickname= "Ruthy";
}

let name_with_year (s: student): string =
  match s with
  | {nickname; name; year} -> name ^ " is " ^ string_of_int (year mod 100);;


(* Copy *)
(* { rbg with name = "Ruth Bader Ginsburg"} *)