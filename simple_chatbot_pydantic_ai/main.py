import logfire
from fastapi import FastAPI
from logfire.integrations.pydantic import PluginSettings
from pydantic import BaseModel
from pydantic_ai import Agent

agent = Agent(
    'openai:gpt-3.5-turbo',
    system_prompt='You are an AI assistent that answer some questions with short answers.',
    instrument=True,
)


class Message(BaseModel, plugin_settings=PluginSettings(logfire={'record': 'all'})):
    content: str


app = FastAPI()

logfire.configure()
logfire.instrument_pydantic()
logfire.instrument_pydantic_ai()
logfire.instrument_fastapi(app)


@app.post('/message', response_model=Message)
async def send_message(message: Message) -> Message:
    result = await agent.run(message.content)
    return Message(content=result.output)
