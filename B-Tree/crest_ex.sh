#!/bin/bash

crestc ./$1.c 2> result.txt

echo "dfs"
run_crest ./$1 $2 -dfs > result_df.txt 2> re_df.txt
cp $1.i cfg $1 stmtcount branches cfg_branches coverage idcount $1.cil.c input funcount $1.cil.i szd_execution cfg_func_map $1.o re_df.txt dfs
grep "Iteration.*" re_df.txt | tail -n 1

echo "cfg"
run_crest ./$1 $2 -cfg > result_cf.txt 2> re_cf.txt
cp $1.i cfg $1 stmtcount branches cfg_branches coverage idcount $1.cil.c input funcount $1.cil.i szd_execution cfg_func_map $1.o re_cf.txt cfg_re
grep "Iteration.*" re_cf.txt | tail -n 1

echo "random"
run_crest ./$1 $2 -random > result_ra.txt 2> re_ra.txt
cp $1.i cfg $1 stmtcount branches cfg_branches coverage idcount $1.cil.c input funcount $1.cil.i szd_execution cfg_func_map $1.o re_ra.txt random
grep "Iteration.*" re_ra.txt | tail -n 1

echo "random_input"
run_crest ./$1 $2 -random_input > result_in.txt 2> re_in.txt
cp $1.i cfg $1 stmtcount branches cfg_branches coverage idcount $1.cil.c input funcount $1.cil.i szd_execution cfg_func_map $1.o re_in.txt random
grep "Iteration.*" re_in.txt | tail -n 1

#echo "uniform_random"
#run_crest ./$1 $2 -uniform_random > result_un.txt 2> re_un.txt
#cp $1.i cfg $1 stmtcount branches cfg_branches coverage idcount $1.cil.c input funcount $1.cil.i szd_execution cfg_func_map $1.o re_un.txt uniform_random
#grep "Iteration.*" re_un.txt | tail -n 1

echo "hybrid"
run_crest ./$1 $2 -hybrid > result_hy.txt 2> re_hy.txt
cp $1.i cfg $1 stmtcount branches cfg_branches coverage idcount $1.cil.c input funcount $1.cil.i szd_execution cfg_func_map $1.o re_hy.txt hybrid
grep "Iteration.*" re_hy.txt | tail -n 1

cp result_df.txt result_cf.txt result_ra.txt result_in.txt re_input 
#cp result_un.txt re_input
cp result_hy.txt re_input

if [ $3 -eq 1 ]
then
	rm $1.i cfg $1 stmtcount branches cfg_branches coverage idcount $1.cil.c input funcount $1.cil.i szd_execution cfg_func_map $1.o *.txt
fi
