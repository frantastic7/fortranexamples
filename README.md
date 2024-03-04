
# Introduction to Fortran 90

Fortran 90, the successor to Fortran 77, introduced significant improvements to the language, including new features for better control structures, array operations, modules for structuring programs, and a vast array of intrinsic functions. This guide aims to provide an in-depth introduction to Fortran 90, covering data types, functions, control structures, string and character manipulation, matrix operations, and data output to files.

## Data Types

Fortran 90 supports various data types, including:

- **Integer**: Used to represent whole numbers.
- **Real**: Represents floating-point numbers.
- **Complex**: Consists of two real numbers representing the real and imaginary parts.
- **Character**: Used for strings of text.
- **Logical**: Represents boolean values (`TRUE` or `FALSE`).

### Example

```fortran
program data_types
  integer :: i = 10
  real :: x = 20.5
  complex :: z = (2.0, 3.5)
  character(len=10) :: str = 'Hello'
  logical :: flag = .TRUE.
end program data_types
```

## Functions and Subroutines

Functions and subroutines are used to encapsulate reusable code blocks. Functions return a value, whereas subroutines do not.

### Example

```fortran
function sum(a, b)
  integer :: sum
  integer, intent(in) :: a, b
  sum = a + b
end function sum

subroutine print_message(message)
  character(len=*), intent(in) :: message
  print *, message
end subroutine print_message
```

## Control Structures

Fortran 90 introduced new control structures, such as `do` loops, `if` statements, and `select case`.

### Example

```fortran
program control_structures
  integer :: i
  ! Do loop
  do i = 1, 10
    print *, i
  end do
  ! If statement
  if (i > 5) then
    print *, 'Greater than 5'
  else
    print *, 'Not greater than 5'
  end if
end program control_structures
```

## String and Character Manipulation

Fortran 90 allows for manipulation of strings and characters through various intrinsic functions.

### Example

```fortran
program string_manipulation
  character(len=20) :: str = 'Hello, World!'
  print *, trim(str)  ! Removes trailing spaces
  print *, len_trim(str)  ! Returns the length of the string without trailing spaces
end program string_manipulation
```

## Matrix Operations

Fortran 90 excels in matrix operations, providing straightforward syntax for matrix manipulation.

### Example

```fortran
program matrix_operations
  integer, dimension(3,3) :: matrix = reshape([1,2,3,4,5,6,7,8,9], [3,3])
  integer, dimension(3,3) :: transposed_matrix
  ! Matrix transpose
  transposed_matrix = transpose(matrix)
  print *, transposed_matrix
end program matrix_operations
```

## Data Output to Files

Outputting data to files in Fortran 90 is handled using the `open`, `write`, and `close` statements.

### Example

```fortran
program write_to_file
  integer :: unit_number
  ! Open a file
  open(newunit=unit_number, file='output.txt', status='unknown')
  ! Write data to the file
  write(unit_number, *) 'Hello, Fortran 90!'
  ! Close the file
  close(unit_number)
end program write_to_file
```

This guide offers a starting point for those new to Fortran 90. As you explore the language further, you'll discover its power and efficiency, especially in scientific computing and numerical analysis.
