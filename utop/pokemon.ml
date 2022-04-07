(* Pokemon *)
type ptype = TNormal | TFire | TWater
(* Pokemon effective *)
type peff = ENormal | ENotVery | ESuper

(* Multiplier of effectivness *)
let mult_of_eff = function
  | ENormal -> 1.
  | ENotVery -> 0.5
  | ESuper -> 2.0

(* Effectivness table *)
(* eff (TFire, TFire);; *)
let eff = function
  | (TFire, TFire) -> ENotVery
  | (TWater, TWater) -> ENotVery
  | (TFire, TWater) -> ENotVery
  | (TWater, TFire) -> ESuper
  | _ -> ENormal

(* eff TFire TFire;; *)
let eff2 t1 t2 =
  match t1, t2 with
  | TFire, TFire | TWater, TWater | TFire, TWater -> ENotVery
  | TWater, TFire -> ESuper
  | _ -> ENormal

type mon = {
  name : string;
  hp : int;
  ptype : ptype;
}

(* Create charmander *)
let charmander = {
  name = "Charmander";
  hp = 39;
  ptype= TFire;
}