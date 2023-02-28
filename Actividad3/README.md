# Actividad 3

Para nginx, existe un archivo llamado "nginx.conf"  es el archivo de configuración principal de Nginx. En este caso, el archivo configura un servidor web que escucha en el puerto 80 y se encarga de servir archivos estáticos a través de Nginx.

Y este contiene la seccion de "location" en este define la ubicación del directorio raíz del servidor y especifica que el servidor debe intentar servir cualquier archivo que se solicite, utilizando el parametro  try_files. En caso de no encontrar el archivo solicitado, el servidor devolverá el archivo index.html (tal como lo muestra el error 404).

Como solución seria importar el archivo "nginx.conf" a la carpeta de trabajo y añadir el siguiente commando.

```
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/nginx.conf /etc/nginx/conf.d

```

* El primer comando. Se elimina el archivo de configuración predeterminado de Nginx para evitar conflictos con la configuración personalizada que este caso contiene el archivo "nginx.conf"

* El segundo comando, se copia el archivo de configuración personalizado nginx.conf en el directorio /etc/nginx/conf.d/ en el contenedor. Este archivo define cómo Nginx manejará las solicitudes entrantes.

Nota: el archivo "nginx.conf" se adjunta en el repositorio para visualizar la configuración que se tiene.
