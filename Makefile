install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_hello.py

format:
	black $$(git ls-files '*.py')

lint:
	pylint --disable=R,C $$(git ls-files '*.py')

all: install lint test