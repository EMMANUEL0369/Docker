# Docker
¡Bienvenido/a al repositorio de Docker que combina los servicios de SSH y Apache2! En este proyecto, hemos creado una solución versátil y potente para implementar contenedores Docker que te permitirán ejecutar tanto un servidor SSH como un servidor web Apache2 de manera rápida y sencilla.

## ¿Qué es Docker y por qué es importante Dockerfile?
Docker es una plataforma de código abierto que permite desarrollar, enviar y ejecutar aplicaciones dentro de contenedores. Estos contenedores son entornos aislados que encapsulan todo lo necesario para que una aplicación se ejecute de manera eficiente y confiable en cualquier entorno. Docker ofrece una forma estandarizada y consistente de gestionar aplicaciones y sus dependencias, lo que facilita enormemente el despliegue y escalabilidad de servicios.

Un Dockerfile es un archivo de texto plano que contiene las instrucciones para construir una imagen personalizada de Docker. Esta imagen es una plantilla que se utiliza para crear contenedores en función de esas especificaciones. Con un Dockerfile, podemos definir el entorno de ejecución exacto que necesitamos para nuestra aplicación, asegurando la consistencia y la reproducibilidad en cualquier sistema donde se implemente.

## Como utilizar el Dockerfile en Docker
Antes de comenzar, asegúrate de tener Docker instalado en tu sistema. Si aún no tienes Docker, puedes encontrar instrucciones detalladas sobre cómo instalar Docker para tu sistema operativo específico en la página oficial de Docker: https://www.docker.com/get-started.

Una vez que tengas Docker instalado, sigue los pasos a continuación para construir y ejecutar la imagen de Docker utilizando el Dockerfile proporcionado:

- Paso 1: Descargar el Dockerfile y el contenido
Descarga el Dockerfile en tu máquina. Asegúrate de que los demas archivos esten el mismo directorio.

- Paso 2: Construir la imagen de Docker
Abre una terminal en el directorio que contiene el Dockerfile. Para construir la imagen de Docker, utiliza el siguiente comando:

```
$ sudo docker build -t nombre_imagen .
```

>
> Reemplaza "nombre_imagen" por un nombre descriptivo como por ejemplo *web*.
>
> El punto (".") al final del comando representa el directorio donde se encuentra el Dockerfile.
>

- Paso 3: Ejecutar el contenedor
Una vez que la imagen se haya construido correctamente, puedes ejecutar un contenedor basado en esa imagen con el siguiente comando:

```
docker run -d -p puerto_host_web:80 -p puerto_host_ssh:22 nombre_imagen
```

>
>Reemplaza "nombre_imagen" por el nombre antes puesto *web*.
>
>"puerto_host_web" es el número de puerto en tu máquina local donde deseas que el servicio web esté disponible. 
>
>"puerto_host_ssh" es el número de puerto en tu máquina local donde deseas que el servicio ssh esté disponible.
