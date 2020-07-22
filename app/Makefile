lint:
	python3 -m isort -c .
	python3 -m black --check .
	python3 -m flake8 .
	python3 -m mypy .

diff:
	python3 -m isort --diff .
	python3 -m black --diff .

format:
	python3 -m isort .
	python3 -m black .

test:
	pip install .
	coverage run -m pytest
	coverage report -m
