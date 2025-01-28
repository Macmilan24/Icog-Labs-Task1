# Metta Implementations

This README describes the implementation of several functions in Metta:

**1. Sum of Multiples of 3 or 5**

*   **`multiple-of-3-or-5 $x`:**
    *   **Base Case:** If `$x` is less than or equal to 0, it means we've reached the end of the range, and the sum is 0.
    *   **Recursive Case:**
        *   Checks if `$x` is divisible by 3 or 5 using the modulo operator (`%`).
        *   If divisible, adds `$x` to the sum of the remaining numbers (calculated recursively by calling `multiple-of-3-or-5` with `$x - 1`).
        *   If not divisible, recursively calls `multiple-of-3-or-5` with `$x - 1` without adding `$x` to the sum.

*   **`sum-multiple-below $n`:**
    *   This function simply calls `multiple-of-3-or-5` with `$n - 1`, as we want to include numbers below the given number `$n`.

**2. Sum of Even Fibonacci Terms**

*   **`sum-even-fib $x $y $limit`:**
    *   **Base Case:** If the current Fibonacci number (`$x`) exceeds the `$limit`, the sum is 0.
    *   **Recursive Case:**
        *   Checks if the current Fibonacci number (`$x`) is even.
            *   If even, adds `$x` to the sum of the remaining even Fibonacci terms (calculated recursively with `$y` as the previous number and `$x + $y` as the next Fibonacci number).
            *   If odd, recursively calls `sum-even-fib` with `$y` as the previous number and `$x + $y` as the next Fibonacci number without adding `$x` to the sum.

*   **`sum-even-fib-below $limit`:**
    *   Initiates the `sum-even-fib` function with the first two Fibonacci numbers: 0 and 1.

**4. Binary Map Function**

*   **`addTwo $x $const`:** 
    *   A simple function that adds two numbers `$x` and `$const`.

*   **`perpare-list $list`:** 
    *   This helper function is designed to handle a specific list format (likely with a delimiter). 
    *   It recursively extracts elements from the list until the delimiter is encountered. 
    *   **Note:** This function might require adjustments depending on the actual list format.

*   **`binary_map $list $con`:** 
    *   Calls `addTwo` with each element of the list and the constant `$con`. 
    *   Uses `perpare-list` to process the input list before applying `addTwo`.

**Key Concepts:**

*   **Recursion:** Both the `multiple-of-3-or-5`, `sum-even-fib`, and `binary_map` functions utilize recursion to iterate through numbers or list elements.
*   **Pattern Matching:** The `if` conditions and the use of `car-atom` and `cdr-atom` for list manipulation demonstrate basic pattern matching within the Metta language.
*   **Function Composition:** The `binary_map` function demonstrates how to combine multiple functions (`perpare-list` and `addTwo`) to achieve a specific result.

**Usage:**

*   To find the sum of multiples of 3 or 5 below 7: `!(sum-multiple-below 7)`
*   To find the sum of even Fibonacci terms below 100: `!(sum-even-fib-below 100)`
*   To apply the `addTwo` function with a constant of 9 to the list (1 2 3 4): `!(binary_map (1 2 3 4 ()) 9)`

**Note:**

*   This README only covers the implemented functions: 1, 2, and 4.
*   The `perpare-list` function is specific to the given example and might need adjustments for different list representations.

This README provides a basic overview of the implemented Metta functions. For more detailed information, refer to the code comments and the Metta documentation.

**Disclaimer:**

This code is provided for illustrative purposes and may not be the most efficient or elegant implementation.