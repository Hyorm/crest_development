#!/bin/bash

crestc ./$1.c 2> result.txt
tail -n+17 result.txt

if [ $2 -eq 1 ]
then
	rm $1 $1.cil.* $1.i $1.o result.txt stmtcount funcount idcount cfg_branches cfg_func_map cfg branches input szd_execution coverage
fi
