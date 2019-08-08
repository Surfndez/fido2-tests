.PHONY: standard-tests vendor-tests

standard-tests: venv
	venv/bin/pytest tests/standard

vendor-tests: venv
	venv/bin/pytest tests/vendor

# setup development environment
venv:
	python3 -m venv venv
	venv/bin/pip install -U pip
	venv/bin/pip install -U -r requirements.txt

# re-run if  dependencies change
update:
	venv/bin/pip install -U pip
	venv/bin/pip install -U -r requirements.txt