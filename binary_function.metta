
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
(= (addTwo () $const) () )

 ; function that accepts two arguments one list and one constant number
(= (addTwo ($x $xs) $const)
    (
         ; add the constant number to the current list elemnet
        (+ $x $const)

         ; call the function again with the next list element
        (addTwo $xs $const)
    ))

 ; a function that accept a list and call binary map with the correct list format
(= (binary_map $list $con) (
        addTwo (perpare-list $list) $con
    ))

 ; give a list with a delimiter
! (binary_map (1 2 3 4 ()) 9)