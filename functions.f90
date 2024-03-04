program compare_numbers
    implicit none
    real :: num1, num2, biggerNumber
  
    print *, "Enter the first number:"
    read *, num1
    print *, "Enter the second number:"
    read *, num2
  
    biggerNumber = compare(num1, num2)
  
    if (biggerNumber == 0) then
       print *, "The numbers are even."
    else
       print *, "The bigger number is: ", biggerNumber
    end if
  
  contains
  
    function compare(x, y) result(bigger)
      real, intent(in) :: x, y
      real :: bigger
  
      if (x > y) then
         bigger = x
      else if (y > x) then
         bigger = y
      else
         bigger = 0
      end if
    end function compare
  
  end program compare_numbers
  