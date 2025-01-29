# Metta Implementations

This README describes the implementation of several functions in Metta:

**1. Sum of Multiples of 3 or 5**

- **`multiple-of-3-or-5 $x`:**

  - **Base Case:** If `$x` is less than or equal to 0, it means we've reached the end of the range, and the sum is 0.
  - **Recursive Case:**
    - Checks if `$x` is divisible by 3 or 5 using the modulo operator (`%`).
    - If divisible, adds `$x` to the sum of the remaining numbers (calculated recursively by calling `multiple-of-3-or-5` with `$x - 1`).
    - If not divisible, recursively calls `multiple-of-3-or-5` with `$x - 1` without adding `$x` to the sum.

- **`sum-multiple-below $n`:**
  - This function simply calls `multiple-of-3-or-5` with `$n - 1`, as we want to include numbers below the given number `$n`.

**2. Sum of Even Fibonacci Terms**

- **`sum-even-fib $x $y $limit`:**

  - **Base Case:** If the current Fibonacci number (`$x`) exceeds the `$limit`, the sum is 0.
  - **Recursive Case:**
    - Checks if the current Fibonacci number (`$x`) is even.
      - If even, adds `$x` to the sum of the remaining even Fibonacci terms (calculated recursively with `$y` as the previous number and `$x + $y` as the next Fibonacci number).
      - If odd, recursively calls `sum-even-fib` with `$y` as the previous number and `$x + $y` as the next Fibonacci number without adding `$x` to the sum.

- **`sum-even-fib-below $limit`:**
  - Initiates the `sum-even-fib` function with the first two Fibonacci numbers: 0 and 1.

**3. Insertion Sort**

- **`prepare-list $list`:**

  - This helper function is designed to handle a specific list format (with a delimiter).
  - It recursively extracts elements from the list until the delimiter is encountered.
  - It structures the list as a list of lists, like `(element (element (element ())))`.

- **`insert $x $list`:**

  - This function inserts element `$x` into a sorted `$list`.
  - It recursively inserts `$x` into the list according to their value by using `<=`.

- **`insertion-sort-prepared $list`:**

  - This function performs the insertion sort using the prepared list structure.
  - It recursively sorts the tail of the list and inserts the head element into its correct sorted position.

- **`sort $list`:**
  - This function accepts the original list with a delimiter, prepares the list, and calls `insertion-sort-prepared` to sort the list.

**4. Binary Map Function**

- **`addTwo $x $const`:**

  - A simple function that adds two numbers `$x` and `$const`.

- **`perpare-list $list`:**

  - This helper function is designed to handle a specific list format (likely with a delimiter).
  - It recursively extracts elements from the list until the delimiter is encountered.
  - **Note:** This function might require adjustments depending on the actual list format.

- **`binary_map $list $con`:**
  - Calls `addTwo` with each element of the list and the constant `$con`.
  - Uses `perpare-list` to process the input list before applying `addTwo`.

**Key Concepts:**

- **Recursion:** All functions utilize recursion to iterate through numbers or list elements.
- **Pattern Matching:** The `if` conditions and the use of `car-atom` and `cdr-atom` for list manipulation demonstrate basic pattern matching within the Metta language.
- # **Function Composition:** The functions demonstrate how to combine multiple functions to achieve specific results.


**Usage:**

- To find the sum of multiples of 3 or 5 below 7: `!(sum-multiple-below 7)`
- To find the sum of even Fibonacci terms below 100: `!(sum-even-fib-below 100)`
- To sort a list: `!(sort (5 2 8 1 0 6 3 9 ()))`
- To apply the `addTwo` function with a constant of 9 to the list (1 2 3 4): `!(binary_map (1 2 3 4 ()) 9)`

**Note:**

- The `perpare-list` function is specific to the given example and might need adjustments for different list representations.
- The `insert` function for the sort algorithm creates a list as space separated elements.

**Video Explanation:**

**Number 1 and 2**
https://github.com/user-attachments/assets/af127f6a-f0db-4ddc-b353-bfa0b7c5c93d

<br>

**Number 3 and 4**
https://github.com/user-attachments/assets/3b59ddd4-d3ca-41ac-8a9f-379a7fc4d63d
<br>

