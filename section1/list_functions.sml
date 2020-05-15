(* sum of elements in a list *)
fun sum_list (xs : int list) =
    if null xs
    then 0
    else hd xs + sum_list (tl xs)

(* product of all elements in a list *)
fun list_product (xs : int list) =
    if null xs
    then 1
    else hd xs * list_product (tl xs)

(* takes an int and returns a list of integers *)
fun countdown (x : int) =
    if x = 0
    then []
    else x :: countdown (x - 1)

(* append two lists of integers *)
(* (int list) * (int list) -> int list *)
fun append (xs : int list, ys : int list) =
    if null xs
    then ys
    else (hd xs) :: append((tl xs), ys)

(* functions over pairs of lists *)
(* sum of pairs of a list *)
fun sum_pair_list (xs : (int * int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list (tl xs)

(* returns a list of the first component of everything *)
fun firsts (xs : (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs)) :: firsts (tl xs)

(* returns a list of the second component of everything *)
fun seconds (xs : (int * int) list) =
    if null xs
    then []
    else (#2 (hd xs)) :: seconds (tl xs)

fun sum_pair_list2 (xs : (int * int) list) =
    (sum_list (firsts xs)) + (sum_list (seconds xs))
