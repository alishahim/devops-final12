# Используем официальный Node.js образ
FROM node:16-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package.json ./
RUN npm install

# Копируем все файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Сервер для обслуживания статики
RUN npm install -g serve
CMD ["serve", "-s", "build"]

# Открываем порт 80
EXPOSE 80
