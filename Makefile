.PHONY: all test clean distclean

all:
	@if ! ( [ -e lib ] && [ -d lib ] ) then mkdir lib; fi
	cd $(shell pwd)/src && make PWD=$(shell pwd)/src

test: ./lib/libmylib.a
	cd $(shell pwd)/test && make PWD=$(shell pwd)/test && make test PWD=$(shell pwd)/test

clean:
	cd $(shell pwd)/src  && make clean
	cd $(shell pwd)/test && make clean

distclean:
	cd $(shell pwd)/src;  make distclean
	cd $(shell pwd)/test; make distclean
	@if   ( [ -e lib ] && [ -d lib ] ) then rmdir lib; fi
