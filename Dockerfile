# Etapa 1: Imagen base para instalación de dependencias
FROM python:3.11-slim AS builder

# Instalar dependencias del sistema necesarias
RUN apt-get update && apt-get install -y \
    libgl1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Crear un directorio de trabajo
WORKDIR /app

# Copiar el archivo de requerimientos para instalar las dependencias
COPY requirements.txt .

# Instalar las dependencias en un directorio separado para copiar después
RUN pip install --no-cache-dir --user -r requirements.txt

# Etapa 2: Imagen final minimalista
FROM python:3.11-slim

# Crear un directorio de trabajo
WORKDIR /app

# Copiar solo los paquetes instalados desde la primera etapa
COPY --from=builder /root/.local /root/.local

# Configurar las variables de entorno para que pip y python utilicen el directorio adecuado
ENV PATH=/root/.local/bin:$PATH

# Copiar el código fuente de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que correrá la aplicación
EXPOSE 5001

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
