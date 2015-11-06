.PHONY: normal openmp measure

normal: matrix_fox.c
	gcc-4.9 matrix_fox.c -o matrix_fox

openmp: matrix_fox.c
	gcc-4.9 matrix_fox.c -o matrix_fox -fopenmp

measure: matrix_fox
	time (for i in {1..10}; do ./matrix_fox; done)
