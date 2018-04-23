.DELETE_ON_ERROR:
OS=$(shell uname)
ifeq ($(OS), Darwin)
	DEST=~/Library/Application\ Support/GenIce
else
	DEST=~/.genice
endif

test:
	genice CS1 -f vpython
install:
	./setup.py install
clean:
	-rm $(ALL) *~ */*~
	-rm -rf build dist *.egg-info
	-find . -name __pycache__ | xargs rm -rf
