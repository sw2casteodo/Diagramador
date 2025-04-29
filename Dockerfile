# Imagen base de Node.js
FROM node:18-slim

# Crear directorio de la app
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de los archivos
COPY . .

# Exponer el puerto (Railway lo establece vía variable de entorno)
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]
