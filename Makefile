REPOSITORY = simple-chatbot-pydantic-ai
SOURCE = simple_chatbot_pydantic_ai

install:
	@uv sync

docs:
	@uv run mkdocs build

format:
	@uv run ruff format $(SOURCE)

lint:
	@uv run ruff check $(SOURCE) --fix

check_vulnerabilities:
	@uv run bandit -c pyproject.toml -r $(SOURCE)	

check_format:
	@uv run ruff format $(SOURCE) --check

check_lint:
	@uv run ruff check $(SOURCE)

check_types:
	@uv run mypy $(SOURCE)

check_all: check_vulnerabilities check_format check_lint check_types
	@echo "🎉✅ All checks have been passed!"


.PHONY: clean
clean:
	@uv cache clean
	@rm -rf .ruff_cache
	@rm -rf .mypy_cache
	@rm -rf .pytest_cache
	@find . -name "__pycache__" -type d -exec rm -rf {} +
	@find . -iname '*.pyc' -delete
	@find . -iname '*.pyo' -delete
	@find . -iname '*~' -delete
	@find . -iname '*.swp' -delete
	@find . -iname '.pytest_cache' -exec rm -rf {} \+	
	@rm -rf .coverage
	@rm -rf coverage.xml
	@echo "➡️ 🗑️ ✅ Cache cleaned!"
