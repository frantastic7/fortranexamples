program matrix_operations
    implicit none
    integer, parameter :: n = 3 ! Size of the square matrices
    real, dimension(n,n) :: matrixA, matrixB, matrixC
    real :: sumDiagonal
    integer :: i, j, k
  
    ! Initialize the random number generator
    call random_seed()
  
    ! Populate matrixA and matrixB with random numbers
    call populate_matrix(matrixA, n)
    call populate_matrix(matrixB, n)
  
    ! Multiply matrixA and matrixB to get matrixC
    matrixC = 0.0
    do i = 1, n
       do j = 1, n
          do k = 1, n
             matrixC(i, j) = matrixC(i, j) + matrixA(i, k) * matrixB(k, j)
          end do
       end do
    end do
  
    ! Calculate the sum of the diagonal of matrixC
    sumDiagonal = 0.0
    do i = 1, n
       sumDiagonal = sumDiagonal + matrixC(i, i)
    end do
  
    print *, "Matrix A:"
    call print_matrix(matrixA, n)
    print *, "Matrix B:"
    call print_matrix(matrixB, n)
    print *, "Matrix C (A*B):"
    call print_matrix(matrixC, n)
  
    print *, "Sum of the diagonal of Matrix C: ", sumDiagonal
  
  contains
  
    subroutine populate_matrix(matrix, n)
      integer, intent(in) :: n
      real, dimension(n,n), intent(out) :: matrix
      integer :: i, j
  
      do i = 1, n
         do j = 1, n
            call random_number(matrix(i, j))
         end do
      end do
    end subroutine populate_matrix
  
    subroutine print_matrix(matrix, n)
      integer, intent(in) :: n
      real, dimension(n,n), intent(in) :: matrix
      integer :: i, j
  
      do i = 1, n
         write(*, '(F8.3, 5X)', advance="no") (matrix(i, j), j = 1, n)
         print *, ""
      end do
    end subroutine print_matrix
  
  end program matrix_operations
  