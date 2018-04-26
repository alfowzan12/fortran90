
program main !
! implicit none
integer :: i
integer :: j
integer, dimension(4, 4) :: A, B, C
integer :: check

A = 0
A = A + 5
print*, "added 5 to matrix A"
print*, "printing matrix A"
do i = 1, 4 , 1
        do j = 1, 4, 1
                print*, A(i,j)
end do
end do
print*, "________________"
print*, "Printing Matrix B after i+j"
do i = 1, 4 , 1
	do j = 1, 4, 1
		B(i,j) = i + j
		print*, B(i,j)
end do 
end do
print*,"________________"
print*,"Adding A+B to C"
C = A + B
print*,"Printing Matrix C"
do i = 1, 4, 1
	print*, ""
	do j = 1, 4, 1
		print*, C(i,j)
	end do
end do
print*,"_________________"
print*,"Replacing 8 with 18 in matrix C and printing it"
do i = 1, 4, 1
	do j = 1, 4, 1
		check = C(i,j)
		if (check == 8) then
			print*, "replacing elements in subscript",i,j,"with 18"
			C(i,j) = 18
			
		end if
	end do
end do


end program main
