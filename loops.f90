program sum_and_average
    implicit none
    real :: number, sum, average
    integer :: count
  
    ! Initialize variables
    sum = 0.0
    count = 0
  
    ! Loop to accept numbers from user until zero is inputted
    print *, "Enter numbers (0 to stop):"
    do
       read *, number
       if (number == 0.0) exit
       sum = sum + number
       count = count + 1
    end do
  
    ! Calculate and display sum and average
    if (count > 0) then
       average = sum / count
       print *, "Sum of the numbers: ", sum
       print *, "Average of the numbers: ", average
    else
       print *, "No numbers were entered."
    end if
  
  end program sum_and_average
  