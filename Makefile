PIP=.venv/bin/pip
PYTEST=.venv/bin/pytest

test:clean
	PYTHONPATH=zeroubouce ${PYTEST} -s -v tests

venv:
	virtualenv .venv --python=python2.7

setup:venv
	${PIP} install -U pip
	${PIP} install -r requirements_test.txt

clean:
	find . -name "*.pyc" -exec rm -rf {} \;
