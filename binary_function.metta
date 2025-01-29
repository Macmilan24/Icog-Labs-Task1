 ; a function that helps to structure the list for the binary map
(= (perpare-list $list) (
         ; check the if the delimiter is reached
        if (== (car-atom $list) () )
        ()
         ; if it is not the delimiter continue
        (
             ; get the first element form the list
            (car-atom $list)

             ; loop until the delimiter is reached
            (perpare-list (cdr-atom $list))
        )
))

 ; base case to stop the recursion when the list is empty
(= (binary_map_aux () $const $f) () )

 ; function that accepts two arguments one list and one constant number
(= (binary_map_aux ($x $xs) $const $f)
    (
         ; apply the binary function to the list element and the constant
        ($f $x $const)

         ; call the function again with the next list element
        (binary_map_aux $xs $const $f)
    ))

 ; a function that accept a list, a constant, and a binary function
(= (binary_map $list $con $f) (
        binary_map_aux (perpare-list $list) $con $f
    ))

 ; a function to add two numbers
(= (addTwo $x $const) (+ $x $const))

 ; give a list with a delimiter
! (binary_map (1 2 3 4 ()) 9 addTwo)