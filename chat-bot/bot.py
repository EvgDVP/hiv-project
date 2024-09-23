import config
import asyncio
import logging
from aiogram import Bot, Dispatcher
from aiogram.filters import CommandStart
#подключение функций
from core.handlers.basic import cmd_start, request_ai

logging.basicConfig(level=logging.INFO)

async def main():
    bot = Bot(config.TOKEN)
    dp = Dispatcher()


    #обработка сообщений
    dp.message.register(cmd_start, CommandStart())
    dp.message.register(request_ai)

    try:
        await dp.start_polling(bot)
    finally:
        await bot.session.close()

if __name__ == "__main__":
    asyncio.run(main())

    