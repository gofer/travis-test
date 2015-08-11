CXX=g++
CXXFLAGS=-std=c++11 -Wall -I. -I../include -O3
LD=g++
LDFLAGS=-L. -L../lib
AR=ar
ARFLAGS=rsv

TARGET=../lib/libmylib.a
SRCS=add.cc multiply.cc
OBJS=$(addsuffix .o,$(basename $(SRCS)))

.SUFFIXES: .cc .o .a
.PHONY: all clean distclean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(AR)  $(ARFLAGS)  -o $@ $^

.cc.o:
	$(CXX) $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f *.o

distclean:
	make clean && rm -f $(TARGET)
