#! /usr/bin/bash
gcc -fopenmp mm-omp.c -o mm1
echo "calculation with matrice of size $1" > result2.txt
for i in `seq 1 20`
do
	echo "$i threads:" >> result2.txt
	perf stat -e cycles -e instructions -- ./mm1 $1 ${i} 2>> result2.txt
done
