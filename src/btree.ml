type 'a btree = Empty | Node of 'a * 'a btree * 'a btree;;

let rec member x btree =
	match btree with
		Empty -> false
		| Node(y, left, right) ->
			if x = y then true else
			if x < y then member x left else member x right;;

let rec insert x btree =
	match btree with
		Empty -> Node(x, Empty, Empty)
		| Node(y, left, right) ->
			if x <= y then Node(y, insert x left, right)
				else Node(y, left, insert x right);;

let rec remove_max btree =
	match btree with 
		Empty -> Empty
		| Node(x, left, right) -> (match right with 
			Empty -> (match left with
 				Empty -> Empty
				| Node(y, l, r) -> left)
			| Node(y, l, r) -> Node(x, left, remove_max right));;
let rec remove_min btree =
	match btree with
		Empty -> Empty
		| Node(x, left, right) -> (match left with
			Empty -> (match right with
				Empty -> Empty
				| Node(y, l, r) -> right)
			| Node(y, l, r) -> Node(x, remove_min left, right));;


