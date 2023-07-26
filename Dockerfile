# Elige la imagen base "debian:latest" para construir nuestra nueva imagen
FROM debian:latest

# Informa al lector que tú, Emmanuel Julian Jose, eres el mantenedor (maintainer) de esta imagen
MAINTAINER Emmanuel Julian Jose dawnoftheapocalipsis@gmail.com

# Actualiza el índice de paquetes e instala Apache2, OpenSSH Server y Sudo
RUN apt update 
RUN apt install -y apache2 openssh-server sudo

# Crea el directorio /var/run/sshd necesario para el servidor SSH
RUN mkdir /var/run/sshd

# Copia el archivo "index.html" en el directorio /var/www/html/
COPY ./index.html /var/www/html/

# Copia todo el contenido del directorio "content" en /var/www/html/content/
COPY ./content/ /var/www/html/content/

# Crea un nuevo usuario llamado "web" con UID 1000 y lo agrega al grupo "root" y al grupo "sudo"
RUN useradd -m -s /bin/bash -g root -G sudo -u 1000 web

# Establece la contraseña del usuario "web" como "web" (¡recuerda que esto es solo para fines de demostración!)
RUN echo 'web:web' | chpasswd

# Expone los puertos 80 (para Apache) y 22 (para SSH) para que sean accesibles desde el host
EXPOSE 80 22

# Copia el archivo "script.sh" en la raíz del contenedor
COPY script.sh script.sh

# Otorga permisos de ejecución al archivo "script.sh"
RUN chmod +x script.sh

# Establece el comando predeterminado que se ejecutará cuando se inicie el contenedor
CMD ["./script.sh"]
