# Docker Image TP

Este proyecto consiste en la creación de una imagen Docker que despliega un servidor Apache con una página HTML básica.

# Estructura del Proyecto
El proyecto contiene los siguientes archivos:

- Dockerfile: Contiene las instrucciones para construir la imagen Docker.
- entrypoint.sh: Script que se ejecuta al inicio del contenedor, asegurándose de que Apache se inicie correctamente.
- index.html: Página HTML básica que se despliega a través de Apache.
- README.md: Este archivo con las instrucciones para clonar, construir y ejecutar el proyecto.

# Pasos a seguir: 

## Clonar el repositorio

Para comenzar, clona este repositorio usando el siguiente comando:

```
git clone https://github.com/nico817/docker-image-tp.git
```

## Accede a la carpeta del proyecto:
 
```
cd docker-image-tp
```

## Crear la imagen Docker
Una vez dentro de la carpeta del proyecto, crea la imagen Docker utilizando el siguiente comando:

```
docker build -t imagen-docker-tp .
```

Este comando construye la imagen a partir del Dockerfile presente en el repositorio. El proceso puede tardar unos minutos dependiendo de la velocidad de tu conexión y tu máquina.

## Ejecutar la imagen Docker
Para ejecutar la imagen Docker que acabas de crear, utiliza el siguiente comando:

```
docker run -p 80:80 imagen-docker-tp
```

Esto ejecutará la imagen y expondrá el puerto 80 del contenedor al puerto 80 de tu máquina local. Ahora podrás acceder a la página HTML a través de tu navegador en `http://localhost:8080 `

# Pasos del despliegue de la imagen en en GitHub 


```
git add .

git commit -m "Cambio del commit"
```
Para este ejemplo se creo la rama `rama-docker` para hacer el push con los cambios a esa rama y luego se realizó un Pull Request desde Github para fusionar los cambios con la rama `main`

```
git checkout -b rama-docker

git push origin rama-docker

```

