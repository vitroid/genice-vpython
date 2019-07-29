.DELETE_ON_ERROR:

test:
	genice CS1 -r 2 2 2 -f vpython

%: temp_% replacer.py genice_vpython/formats/vpython.py
	python replacer.py < $< > $@
	-fgrep '%%' $@

check:
	./setup.py check
install:
	./setup.py install
pypi: check
	./setup.py sdist bdist_wheel upload
clean:
	-rm $(ALL) *~ */*~
	-rm -rf build dist *.egg-info
	-find . -name __pycache__ | xargs rm -rf
