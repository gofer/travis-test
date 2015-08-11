include ../../Makefile.mk

CXXFLAGS+=-I../../include
LDFLAGS+=-L../../lib

TARGET=debug.out
SRCS=test2.cc
OBJS=$(addsuffix .o,$(basename $(SRCS)))

.SUFFIXES: .cc .o .out
.PHONY: all test clean distclean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS)  -o $@ $^ -lmylib

.cc.o:
	$(CXX) $(CXXFLAGS) -o $@ -c $<

test: $(TARGET)
	./$(TARGET)

clean:
	rm -f *.o

distclean:
	make clean && rm -f $(TARGET)
