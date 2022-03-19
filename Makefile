.PHONY: build venv deps clean init release

build: venv deps init

venv:
	virtualenv -p python3 .env

deps:
	.env/bin/pip install -r requirements.txt

clean:
	find -name '*.pyc' -delete
	find -name '*.swp' -delete
	find -name '__pycache__' -delete

init:
	if [ ! -e var ]; then mkdir -p var; fi

release:
	git push; git push --tags; rm dist/*; python3 setup.py clean sdist; twine upload dist/*
