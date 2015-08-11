include ../Makefile.mk

CXXFLAGS+=-I../include -O3
LDFLAGS+=-L../lib
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
