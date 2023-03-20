# Actividad 4 :point_left:
Crear un systemd unit de tipo servicio para ejecutar un script imprima un saludo y la fecha actual. Explica los pasos para la instalación del servicio.

:fire: 1. Crea el archivo sh, le pondremos "saludo.sh" con el que tendra el mensaje del saludo y la fecha
```
#!/usr/bin/bash
echo "Hola, la fecha actual es:  $(date +%A), $(date +%d) de $(date +%B) de $(date +%Y)"
```

:fire: 2. Crea el archivo del servicio en la ruta '/etc/systemd/system/', le pondremos "actividad4.service"

```
[Unit]
Description=Servicio de saludo y fecha

[Service]
Type=simple
ExecStart=/usr/bin/bash /rutaScript/saludo.sh
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=saludo_servicio

[Install]
WantedBy=multi-user.target
```

:fire: 3. Luego de crear el archivo y guardarlo en la ruta. Se procede a levantar el servicio con el comando.

```
sudo systemctl enable actividad4.service
```

:fire: 4. Luego inicia el servicio.
```
sudo systemctl start actividad4.service
```

:fire: 5. En ese momento ya esta levantado el servicio y para ver la salida del servicio se hace con el comando.
```
sudo journalctl -u activida4.service
```
