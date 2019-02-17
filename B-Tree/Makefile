DIR=/home/hyorm1226/Development/crest-0.1.2
CILLY=$(DIR)/cil/bin/cilly
CC=$(CILLY) --save-temps --doCrestInstrument
CFLAGS= -I${DIR}/include
LDFLAGS= -L${DIR}/lib -lcrest -lstdc++
SOURCES= b_tree.c
TARGET= b_tree_gcov

all: $(SOURCES) clean
	$(CC) $(SOURCES) -fprofile-arcs -ftest-coverage -o $(TARGET) $(CFLAGS) $(LDFLAGS) 
	${DIR}/bin/process_cfg
clean:
	cp b_tree_gcov b_tree
	rm -f $(TARGET)
	rm -f branches cfg cfg_branches cfg_func_map funcount idcount stmtcount
