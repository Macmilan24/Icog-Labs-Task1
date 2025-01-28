; function to get the sum of all multiple of 3 or 5
(= (multiple-of-3-or-5 $x) 
    (
        ; base condition to terminate the loop
        if (> $x 0)
        (
            ; check if the number is divisible by 3 or 5
            if (or (== 0 (% $x 3)) (== 0 (% $x 5))) 
            (
                ; add the number to the previous multiple and call the function again
                +  $x (multiple-of-3-or-5 ( - $x 1))
            )
            ; if number is not multiple jump to next iteration 
            (multiple-of-3-or-5 (- $x 1))
        )
        0
    )

)

; function to get the numbers below the given input
(= (sum-multiple-below $n) 

(multiple-of-3-or-5 (- $n  1))
)

!(sum-multiple-below 7)