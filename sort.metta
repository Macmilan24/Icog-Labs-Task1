 ; Helper function to structure the list for sorting
(= (prepare-list $list)
    (if (== (car-atom $list) ())
        ()
        ( (car-atom $list)
            (prepare-list (cdr-atom $list)))))

 ; Function to insert an element into a sorted list using a prepared list
(= (insert $x ()) ( $x ()))
(= (insert $x ( $y $ys))
    (if (<= $x $y)
        ( $x ( $y $ys))
        ( $y (insert $x $ys))))

 ; Function to perform insertion sort using a prepared list
(= (insertion-sort-prepared ()) ())
(= (insertion-sort-prepared ($x $xs))
    (insert $x (insertion-sort-prepared $xs)))

 ; A function that accepts a list and calls insertion sort with the correct format
(= (sort $list) (
        insertion-sort-prepared (prepare-list $list)
    ))

 ; Example Usage
! (sort (5 2 8 1 0 6 3 9 ()))
