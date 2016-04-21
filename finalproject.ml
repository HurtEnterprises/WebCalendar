(*Exercise 2*)

type expr = 
	| Num of int
	| Unop of string * expr 
	| Binop of string * expr * expr  ;;

let rec exp_to_string ex = 
	match ex with 
	|  Num a -> string_of_int a 
	|  Unop (a, b) -> a ^ " " ^ exp_to_string b
	|  Binop (a, b, c) -> (exp_to_string b) ^ " " ^ a ^ " " ^ (exp_to_string c) 



