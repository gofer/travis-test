.PHONY: all test clean distclean

all:
	@if ! ( [ -e lib ] && [ -d lib ] ) then mkdir lib; fi
	cd ./src; make; cd ..

test: ./lib/libmylib.a
	cd ./test; make; make test; cd ..

clean:
	cd ./src;  make clean; cd ..
	cd ./test; make clean; cd ..

distclean:
	cd ./src;  make distclean; cd ..
	cd ./test; make distclean; cd ..
	@if   ( [ -e lib ] && [ -d lib ] ) then rmdir lib; fi

