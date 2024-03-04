program check_prime_non_recursive
    implicit none
    integer :: number, i
    logical :: is_prime
  
    print *, 'Enter a number:'
    read *, number
  
    is_prime = .TRUE.
  
    if (number <= 1) then
       is_prime = .FALSE.
    else
       do i = 2, number - 1
          if (mod(number, i) == 0) then
             is_prime = .FALSE.
             exit
          end if
       end do
    end if
  
    call print_result(number, is_prime)
  
  contains
  
    subroutine print_result(number, is_prime)
      integer, intent(in) :: number
      logical, intent(in) :: is_prime
      if (is_prime) then
         print *, number, 'is a prime number.'
      else
         print *, number, 'is not a prime number.'
      end if
    end subroutine print_result
  
  end program check_prime_non_recursive
  