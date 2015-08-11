CXX=g++
CXXFLAGS=-std=c++1y -Wall -I../../include -I. -O3
LD=g++
LDFLAGS=-L../../lib -L.

TARGET=debug.out
SRCS=test1.cc
OBJS=$(addsuffix .o,$(basename $(SRCS)))

.SUFFIXES: .cc .o .out
.PHONY: all test clean distclean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(LD)  $(LDFLAGS)  -o $@ $^ -lmylib

.cc.o:
	$(CXX) $(CXXFLAGS) -o $@ -c $<

test: $(TARGET)
	./$(TARGET)

clean:
	rm -f *.o

distclean:
	make clean && rm -f $(TARGET)
