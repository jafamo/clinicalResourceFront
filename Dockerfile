# Usa una imagen oficial de Node.js
FROM node:18

# Crea el directorio de trabajo en el contenedor
WORKDIR /usr/src/medical_front/

RUN echo pwd
RUN echo "entra"

# Copia los archivos de configuración de la aplicación
COPY  medical_front/* ./

RUN npm install -g @angular/cli

# Instala las dependencias de Node.js
RUN npm install

# Copia el resto de los archivos de la aplicación
#COPY medical_front/* .

# Expone el puerto que utiliza Angular CLI por defecto
EXPOSE 4200

# Comando para iniciar el servidor de desarrollo de Angular
CMD ["npm", "start"]