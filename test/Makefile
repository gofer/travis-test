TEST_DIR=test1 test2 test3 test4

.PHONY: all clean test distclean

all: 
	@for dir in $(TEST_DIR); do cd $(PWD)/$${dir} && make PWD=$(PWD)/$${dir}; done

test: 
	@for dir in $(TEST_DIR); do cd $(PWD)/$${dir} && make test PWD=$(PWD)/$${dir}; if [ $$? -ne 0 ]; then exit 2; fi done

clean:
	@for dir in $(TEST_DIR); do cd $(PWD)/$${dir} && make clean     && cd ..; done

distclean:
	@for dir in $(TEST_DIR); do cd $(PWD)/$${dir} && make distclean && cd ..; done
