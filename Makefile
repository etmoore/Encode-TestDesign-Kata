all: test

test: venv
	.venv/bin/pytest python/tests

.PHONY: venv
venv:
	python3 -m venv .venv
	.venv/bin/pip install -r python/requirements.txt