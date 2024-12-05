# Utiliza la última imagen de Debian como base
FROM debian:latest

# Instala Apache dentro del contenedor
RUN apt-get update && apt-get install -y apache2

# Copia el archivo 'index.html' al directorio de Apache en el contenedor
COPY index.html /var/www/html/index.html

# Copia el archivo 'entrypoint.sh' al contenedor
COPY entrypoint.sh /entrypoint.sh

# Otorga permisos de ejecución al archivo 'entrypoint.sh'
RUN chmod +x /entrypoint.sh

# Expone el puerto 80, utilizado por Apache
EXPOSE 80

# Ejecuta el script de entrada 'entrypoint.sh' cuando inicie el contenedor
ENTRYPOINT ["/entrypoint.sh"]

# Define el comando por defecto para ejecutar Apache en primer plano
CMD ["apache2ctl", "-D", "FOREGROUND"]
