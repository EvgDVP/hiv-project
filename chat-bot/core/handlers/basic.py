from aiogram import Bot, types
from core.functions.ya_api import send_async_request

async def cmd_start(message: types.Message):
    await message.answer(
        'Привет! Я бот, который предоставляет проверенную информацию про ВИЧ. Я могу ответить на ваши вопросы о передаче, профилактике и лечении ВИЧ. Помогу вам разобраться в распространенных мифах и предоставлю надежную информацию.')

async def request_ai(message: types.Message, bot: Bot):
    answer = await send_async_request(message.text)
    await message.answer(answer)


