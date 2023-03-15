#!/bin/sh

brew install git pyenv poetry

PY_VERSION=$(cat .python-version)
pyenv install $PY_VERSION
pyenv shell $PY_VERSION

rm -rf .venv
poetry env use $PY_VERSION
poetry install
pip install sqlfluff-templater-dbt
poetry shell