(*
type 'a myList =
  | Nil
  | Cons of 'a * * 'a myList

  Differences with lists are that the tree can stack another tree in the node whereas the list has a single child.
 *)

type 'a tree =
  | Leaf
  | Node of 'a * 'a tree * 'a tree

let t =
  Node (
    1,
    Node (2, Leaf, Leaf),
    Node (3, Leaf, Leaf)
  )

(* Get the size of a list
   let rec size = function
   | [] -> 0
   | h :: t -> 1 + size t
*)

(* Get the size of a tree *)
let rec size = function
  | Leaf -> 0
  | Node (_, l, r) -> 1 + size l + size r

(* Sum a list *)
let rec sum = function
  | [] -> 0
  | h :: t -> h + sum t

(* Sum a tree *)
let rec sumT = function
  | Leaf -> 0
  | Node (v,l,r) -> v + sum l + sum r