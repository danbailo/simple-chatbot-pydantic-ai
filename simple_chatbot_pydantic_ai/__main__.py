import typer

from simple_chatbot_pydantic_ai.utils.logger import Logger, LoggerFactory

logger: Logger = LoggerFactory.new()

app = typer.Typer()


@app.callback()
def callback():
    pass


@app.command()
def execute(option: str = typer.Option()):
    logger.info(f'option: {option}')


if __name__ == '__main__':
    app()
