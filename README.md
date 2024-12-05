Proyecto Docker: Infraestructura en la Nube
Este proyecto contiene una imagen Docker que sirve una página web básica con información sobre la materia Infraestructura en la Nube y tu nombre.

Instrucciones
1. Clonar el repositorio
Primero, clona este repositorio a tu máquina local:

bash
Copiar código
git clone https://github.com/tu-usuario/infraestructura-en-la-nube.git
cd infraestructura-en-la-nube
Si prefieres trabajar con ramas, se recomienda usar una rama de desarrollo para evitar conflictos directos en la rama principal. Puedes crear una rama de la siguiente manera:

bash
Copiar código
git checkout -b nombre-de-tu-rama
2. Crear la imagen Docker
Una vez que hayas clonado el repositorio y te encuentres en el directorio del proyecto, asegúrate de que el Dockerfile, entrypoint.sh, y index.html estén presentes.

Construye la imagen Docker ejecutando el siguiente comando:

bash
Copiar código
docker build -t infraestructura-en-la-nube .
Este comando le da el nombre infraestructura-en-la-nube a la imagen construida.

3. Desplegar la imagen Docker
Para desplegar la imagen en un contenedor y acceder a la página, usa el siguiente comando:

bash
Copiar código
docker run -d -p 8080:80 infraestructura-en-la-nube
-d: Ejecuta el contenedor en segundo plano.
-p 8080:80: Mapea el puerto 80 del contenedor al puerto 8080 de tu máquina local.
4. Acceder a la página
Una vez que el contenedor esté en ejecución, abre tu navegador y accede a la siguiente dirección:

arduino
Copiar código
http://localhost:8080
Verás una página web con el nombre de la materia Infraestructura en la Nube y tu nombre, Marcelo Nicolás Nuñez.

5. Uso de Ramas en Git
Para mantener el proyecto organizado y facilitar las contribuciones, te recomendamos trabajar en ramas de desarrollo. Para crear y cambiar a una nueva rama, usa:

bash
Copiar código
git checkout -b nueva-rama
Cuando termines de hacer tus cambios, puedes hacer commit y push a esa rama:

bash
Copiar código
git add .
git commit -m "Descripción de los cambios"
git push origin nueva-rama