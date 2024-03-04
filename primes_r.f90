program check_prime_recursive
    implicit none
    integer :: number
    logical :: is_prime
  
    print *, 'Enter a number:'
    read *, number
  
    is_prime = check_prime(number, number / 2)
  
    call print_result(number, is_prime)
  
  contains
  
    recursive function check_prime(number, divisor) result(is_prime)
      integer, intent(in) :: number, divisor
      logical :: is_prime
  
      if (number <= 1) then
         is_prime = .FALSE.
      else if (divisor == 1) then
         is_prime = .TRUE.
      else if (mod(number, divisor) == 0) then
         is_prime = .FALSE.
      else
         is_prime = check_prime(number, divisor - 1)
      end if
    end function check_prime
  
    subroutine print_result(number, is_prime)
      integer, intent(in) :: number
      logical, intent(in) :: is_prime
      if (is_prime) then
         print *, number, 'is a prime number.'
      else
         print *, number, 'is not a prime number.'
      end if
    end subroutine print_result
  
  end program check_prime_recursive
  