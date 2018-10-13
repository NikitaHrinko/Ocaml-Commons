#use "../src/list.ml";;

let list = [1; 2; 3; 4];;

size list;;

front list;;

back list;;

let list = pop_front list;;

size list;;

front list;;

back list;;

let list = pop_back list;;

size list;;

front list;;

back list;;

let list = pop_front list;;

size list;;

front list;;

back list;;

let list = push_front 10 list;;

size list;;

let list = pop_front (push_back 15 list);;

size list;;

let list = pop_back list;;

pop_back list;;

pop_front list;;
