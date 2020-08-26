.DELETE_ON_ERROR:

test:
	genice CS1 -r 2 2 2 -f vpython

%: temp_% replacer.py genice_vpython/formats/vpython.py genice_vpython/__init__.py
	python replacer.py < $< > $@
	-fgrep '%%' $@

prepare: # might require root privilege.
	pip install genice vpython


test-deploy: build
	twine upload -r pypitest dist/*
test-install:
	pip install vpython
	pip install --index-url https://test.pypi.org/simple/ genice-vpython



install:
	./setup.py install
uninstall:
	-pip uninstall -y genice-vpython
build: README.md $(wildcard genice_vpython/formats/*.py)
	./setup.py sdist bdist_wheel


deploy: build
	twine upload dist/*
check:
	./setup.py check
clean:
	-rm $(ALL) *~ */*~
	-rm -rf build dist *.egg-info
	-find . -name __pycache__ | xargs rm -rf
