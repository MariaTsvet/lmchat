# Используем официальный образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app ./app

# Указываем команду запуска приложения
CMD ["flask", "run", "--host=0.0.0.0"]
