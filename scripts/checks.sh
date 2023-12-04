#!/bin/sh -e
set -x

pipenv run ruff --fix .
pipenv run black .
pipenv run mypy -p auth
pipenv run mypy -p chat
pipenv run mypy -p musical_info
