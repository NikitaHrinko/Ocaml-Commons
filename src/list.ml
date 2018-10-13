exception Empty_list of string;;

let rec push_back item list =
	match list with [] -> [item]
	| head :: tail -> head :: push_back item tail;;

let push_front item list = item :: list;;

let rec size list = 
	match list with [] -> 0
	| head :: tail -> 1 + size tail;;

let rec pop_back list =
	match list with [] -> []
	| head :: tail ->
		(match tail with [] -> []
		| h :: t -> head :: (pop_back tail));;

let pop_front list =
	match list with [] -> []
		| head :: tail -> tail;;

let front list =
	match list with [] -> raise (Empty_list "can't get first element of an empty list")
	| head :: tail -> head;;

let rec back list =
	match list with [] -> raise (Empty_list "can't get last element of an empty list")
	| head :: tail ->
		(match tail with [] -> head
		| h :: t -> back tail);;
