# FirstAppFastHTML

FirstAppFastHTML es una aplicación web básica construida con el framework **FastHTML**, diseñada para mostrar una página simple con el mensaje "Hello, World". Esta app está pensada como un cascarón o plantilla para desarrollar aplicaciones más complejas usando **FastHTML** con Docker. 

## Características

- Muestra una página con el mensaje **Hello, World**.
- Preparada para ser ejecutada dentro de un contenedor Docker.
- Basada en el framework FastHTML, similar a FastAPI pero orientado a servir HTML.
  
## Requisitos previos

Para ejecutar la aplicación, necesitarás tener instalados los siguientes componentes:

- **Python 3.11 o superior**
- **Docker** (para ejecutar la aplicación en un contenedor)
- **Linux Ubuntu** como sistema operativo (desarrollada y probada en Ubuntu)

## Instalación y Ejecución Local

Si prefieres ejecutar la aplicación localmente sin Docker, sigue estos pasos:

1. Clona este repositorio:

    ```bash
    git clone https://github.com/giozar/FirstAppFastHTML.git
    cd FirstAppFastHTML
    ```

2. Crea un entorno virtual (opcional pero recomendado):

    ```bash
    python -m venv venv
    source venv/bin/activate  # En Windows: venv\Scripts\activate
    ```

3. Instala las dependencias:

    ```bash
    pip install -r requirements.txt
    ```

4. Ejecuta la aplicación:

    ```bash
    python app.py
    ```

5. Abre tu navegador y navega a `http://127.0.0.1:8000`. Deberías ver una página con el mensaje "Hello, World".

## Ejecutar con Docker

La aplicación está preparada para ser ejecutada dentro de un contenedor Docker. Aquí tienes los pasos para construir y ejecutar la imagen:

1. Clona el repositorio:

    ```bash
    git clone https://github.com/giozar/FirstAppFastHTML.git
    cd FirstAppFastHTML
    ```

2. Construye la imagen Docker:

    ```bash
    docker build -t firstappfasthtml .
    ```

3. Ejecuta el contenedor Docker:

    ```bash
    docker run -d -p 5001:5001 firstappfasthtml
    ```

4. Abre tu navegador y navega a `http://localhost:5001` para ver la aplicación en funcionamiento.

## Dockerfile

El **Dockerfile** está optimizado utilizando **multistage build** para reducir el tamaño de la imagen final. La imagen se construye en dos fases:

1. La primera fase instala las dependencias necesarias.
2. La segunda fase genera una imagen ligera que contiene solo los archivos necesarios para ejecutar la aplicación.

Puedes revisar el Dockerfile dentro del repositorio para más detalles.

## Estructura del Proyecto

 ```bash
    firstAppFastHTML/
├── app.py               # Archivo principal de la aplicación
├── Dockerfile           # Archivo de construcción de Docker
├── requirements.txt     # Dependencias de Python
└── README.md            # Documentación de la aplicación

    ```


## Tecnologías Utilizadas

- **Python 3.11**: El lenguaje de programación en el que está escrita la aplicación.
- **FastHTML**: Framework utilizado para construir la app web, inspirado en FastAPI.
- **Docker**: Tecnología de contenedores utilizada para empaquetar y desplegar la aplicación de manera eficiente.

## Notas adicionales

Esta aplicación es solo una base para construir aplicaciones web más complejas con **FastHTML**. Puedes extenderla fácilmente añadiendo más rutas y funcionalidades según sea necesario.

