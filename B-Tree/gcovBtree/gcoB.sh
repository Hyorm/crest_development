#!/bin/bash
gcc -fprofile-arcs -ftest-coverage b_tree.c
cp $1/result_$2.txt gcovIn.txt
sumV=1;
while [ -s "gcovIn.txt" ]
do
	make
	crntLnNm=$(cat lineNum.txt)
	crntLnNm=$(($crntLnNm+$sumV))
	cat gcovIn.txt | tail -n +$crntLnNm > gcovIn
	mv  gcovIn gcovIn.txt
done

make clean
