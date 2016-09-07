#! /usr/bin/bash
gcc -fopenmp mm-omp.c -o mm1
echo "calculation with matrice of size $1" > result2.txt
declare -a threads=(1 2 4 8 16 32)
for i in "${threads[@]}"
do
	echo "$i threads:" >> result2.txt
	perf stat -- ./mm1 $1 ${i} 2>> result2.txt
done
