 ; Helper function to structure the list for sorting (element (element ()))
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

 ; Function to insert an element into a sorted list using a prepared list
(= (insert $x ()) ( $x ())) ; base case to stop the loop

(= (insert $x ( $y $ys))

     ; check if the first element is less than or equal to the second element
    (if (<= $x $y)

         ; if true then continue as it is
        ( $x ( $y $ys))

         ;else swap the elements call the function again
        ( $y (insert $x $ys))))

 ; Function to perform insertion sort using a prepared list
(= (insertion-sort-prepared ()) ()) ; base case to stop the loop

(= (insertion-sort-prepared ($x $xs))

     ; call the insert function with a corrct format
    (insert $x (insertion-sort-prepared $xs)))

 ; A function that accepts a list and calls insertion sort with the correct format
(= (sort $list) (
        insertion-sort-prepared (prepare-list $list)
    ))

 ; call the function with  list that has delimiter
! (sort (5 2 8 1 0 6 3 9 ()))
