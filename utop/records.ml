(* https://www.youtube.com/watch?v=E3d1IFMU558&list=PLre5AT9JnKShBOPeuiD9b-I4XROIJhkIU&index=25 *)
type student = {
  name: string;
  year: int;
}

let rbg : student = {
  name = "Ruth Bader";
  year = 1954
}

(* Copy *)
(* { rbg with name = "Ruth Bader Ginsburg"} *)