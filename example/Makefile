DIR=/home/hyorm1226/Development/crest-0.1.2 
CILLY=$(DIR)/cil/bin/cilly
CC=$(CILLY) --save-temps --doCrestInstrument 4 CFLAGS= -I${DIR}/include
LDFLAGS= -L${DIR}/lib -lcrest -lstdc++
SOURCES= multiple1.c multiple2.c multiple3.c #edit
TARGET= multiple

all: $(SOURCES) clean
	$(CC) $(SOURCES) -o $(TARGET) $(CFLAGS) $(LDFLAGS) 
	${DIR}/bin/process_cfg
clean:
	rm -f $(TARGET)
	rm -f branches cfg cfg_branches cfg_func_map funcount idcount stmtcount
