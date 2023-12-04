#!/bin/sh -e
set -x

pipenv run ruff --fix .
pipenv run black .
pipenv run mypy -p auth -p chat -p musical_info
