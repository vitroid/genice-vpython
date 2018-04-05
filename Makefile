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
	install -d $(DEST)
	install -d $(DEST)/formats
	install formats/*py $(DEST)/formats
clean:
	-rm $(ALL) *~ */*~
	-rm -rf */__pycache__
