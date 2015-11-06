.PHONY: normal openmp measure

normal: fox_normal.c
	gcc-4.9 fox_normal.c -o fox_normal

openmp: fox_normal.c
	gcc-4.9 fox_normal.c -o fox_normal -fopenmp

measure: fox_normal
	time (for i in {1..10}; do ./fox_normal; done)
