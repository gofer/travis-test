TEST_DIR=test1 test2 test3 test4

.PHONY: all clean test distclean

all: 
	@for dir in $(TEST_DIR); do cd $${dir}; make;           cd ..; done

test: 
	@for dir in $(TEST_DIR); do cd $${dir}; make test;      cd ..; done

clean:
	@for dir in $(TEST_DIR); do cd $${dir}; make clean;     cd ..; done

distclean:
	@for dir in $(TEST_DIR); do cd $${dir}; make distclean; cd ..; done
