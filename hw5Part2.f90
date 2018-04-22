program main !
integer :: i
integer :: j
integer, dimension(4, 4) :: A, B, C
integer :: check
do i = 1, 4, 1
	DO J = 1, 4, 1
		A(i, J) = 5
		print*, A(i, J)
	END DO
END DO
do i = 1, 4 , 1
	do j = 1, 4, 1
		B(i,j) = i + j
		print*, B(i,j)
end do 
end do

do i = 1, 4, 1
	do j = 1, 4, 1
	C(i,j) = A(i,j) + B(i,j)
	print*, C(i,j)
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
