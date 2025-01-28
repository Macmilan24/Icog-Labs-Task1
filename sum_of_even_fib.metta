(= (sum-even-fib $x $y $limit) (
         ; base case to check when the limit is reached
        if (<= $x $limit)
        (
             ; check if the current (fib term) is even
            if (== 0 (% $x 2))
            (
                 ; if true the add it to the sum and go to the next
                + $x (sum-even-fib $y (+ $x $y) $limit)
            )
         ; call the function again without adding it to the sum
        (sum-even-fib $y (+ $x $y) $limit)
    )
0
)
)

 ; function to find the sum of fib term below the limit by initiating it from 0, 1
(= (sum-even-fib-below $limit)
     ;call the sum function by initiating it to 0,1
    (sum-even-fib 0 1 $limit)
)

 ;call the function
! (sum-even-fib-below 100)