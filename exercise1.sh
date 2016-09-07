#! /usr/bin/bash
gcc -fopenmp mm-omp.c -o mm1
echo "calculation with matrice of size $1" > result1.txt
for i in `seq 1 20`
do
	echo -n "$i threads:" >> result1.txt
	./mm1 $1 ${i} 2>> result1.txt
done
