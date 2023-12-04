EXPORT = export PYTHONPATH=$(PWD)

include .env
shell:
	$(EXPORT) && pipenv run python

checks:
	$(EXPORT) && pipenv run sh scripts/checks.sh
