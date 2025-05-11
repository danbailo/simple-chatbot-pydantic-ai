# chatbot

<p align="center">
    <em>"A simple chatbot using PydanticAI and FastAPI"</em>
</p>
<p align="center">
<a href="https://github.com/danbailo/simple-chatbot-pydantic-ai/actions/workflows/linting.yaml?query=branch=main" target="_blank">
    <img src="https://github.com/danbailo/simple-chatbot-pydantic-ai/actions/workflows/linting.yaml/badge.svg?branch=main" alt="Linting">
</a>
</p>

Simple structure that I([@danbailo](https://github.com/danbailo)) like use to build projects.

enjoy and... Python 🐍 for everthing 😄

## Preparing project
This project uses [uv](https://github.com/astral-sh/uv) as package and project manager. Just install `uv` then `make install` and you will able to develop and run this project!

## Make
The project uses a [Makefile](Makefile) to facilitate project installation, lint execution, typing and testing.

### Project commands

| Command | Description |
|-|-|
| `make install` | Install project |
| `make format` | Format the code |
| `make lint` | Lint the code |
| `make check_vulnerabilities` | Check vulnerabilities |
| `make check_format` | Check code format |
| `make check_lint` | Check code lint |
| `make check_types` | Check code types |
| `make check_all` | Run all checkers of project |
| `make clean` | Clean project cache |

All settings defined in formatting, typing and linting are defined in the Python project configuration file - [pyproject.toml](pyproject.toml).
