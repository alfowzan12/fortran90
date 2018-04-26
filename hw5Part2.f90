
program main !
! implicit none
integer :: i
integer :: j
integer, dimension(4, 4) :: A, B, C
integer :: check

A = 0
A = A + 5

do i = 1, 4 , 1
	do j = 1, 4, 1
		B(i,j) = i + j
		print*, B(i,j)
end do 
end do

C = A + B
do i = 1, 4, 1
	print*, ""
	do j = 1, 4, 1
		write(stdout, 10, advance='no') A(i,j)
	end do
end do

do i = 1, 4, 1
	do j = 1, 4, 1
		check = C(i,j)
		if (check == 8) then
			C(i,j) = 18
			print*, C(i,j)
		end if
	end do
end do


end program main
