# Базовый образ Python
FROM python:3.9-slim

# Рабочая директория
WORKDIR /app

# Копировать файл зависимостей в контейнер
COPY requirements.txt .

# Установка зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копирование всех файлов приложения в контейнер
COPY . .

# Команда для запуска приложения
CMD ["python", "app.py"]
