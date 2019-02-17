btree: b_tree b_tree.c
	cat gcovIn.txt |./a.out > lineNum.txt
	gcov b_tree.c | grep "Lines executed.*"

gcovVI: b_tree.c.gcov
	vim b_tree.c.gcov

b_tree.c.gcov: b_tree

vimC: 
	vim b_tree.c

clean: 
	#rm b_tree.c.gcov 
	rm a.out 
	rm b_tree.gc*
