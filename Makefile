CC ?= gcc
CFLAGS := -c -Wall -O2 $(CFLAGS)
SOURCES = 	gettree.c \
			outgraphviz.c \
			outtree.c \
			rbtree.c \
			slib.c \
			tceetree.c \
			symtree.c

OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = tceetree

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(EXECUTABLE) *.o
