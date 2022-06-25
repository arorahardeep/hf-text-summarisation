install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

run:
	python app.py

test:
	python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=smath --cov=web tests
	python -m pytest --nbval notebook.ipynb 
	#python -m pytest tests/test_web.py

debug:
	python -m pytest -vv --pdb 

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test format
