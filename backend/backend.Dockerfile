# Используем официальный Node.js образ
FROM node:16-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package.json ./
RUN npm install

# Копируем все файлы проекта
COPY . .

# Запускаем приложение
CMD ["npm", "start"]

# Открываем порт 5000
EXPOSE 5000
