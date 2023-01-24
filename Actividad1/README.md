# Actividad 1 :triangular_flag_on_post:
### :zap: Tipos de Kernel y diferencias
Tipo | Descripción | Caracteristica Importante |
|-----|-----|-----|
|Kernels Monolíticos | Este tipo de kernel incluye todos los componentes necesarios para el funcionamiento del sistema operativo en un solo módulo. Es decir, el kernel monolítico incluye el núcleo del sistema, los controladores de dispositivos, el administrador de memoria, el administrador de procesos, etc. Este tipo de kernel es común en sistemas operativos antiguos como DOS y Windows. | Los kernels monolíticos facilitan abstracciones del hardware subyacente realmente potentes y variadas. Algunos ejemplos son: AIX, DoS, Solaris y OpenSolaris| 
|MicroKernels | Este tipo de kernel incluye solo los componentes esenciales para el funcionamiento del sistema operativo, como el administrador de procesos y el administrador de memoria. Los otros componentes, como los controladores de dispositivos, se ejecutan como procesos separados en el sistema operativo. | Los microkernels proporcionan un pequeño conjunto de abstracciones simples del hardware y usan las aplicaciones llamadas servidores para ofrecer mayor funcionalidad. Tambien que la administración del codigo es mas simple gracias a la división de los servicios en espacio de usuario. Algunos ejemplos son: BeOS, QNX, RadiOS|
|Kernels Híbridos | Este tipo de kernel combina características de los kernels monolíticos y microkernel. Algunos componentes del sistema operativo, como los controladores de dispositivos, se ejecutan como procesos separados en el sistema operativo, mientras que otros componentes, como el administrador de procesos y el administrador de memoria, se incluyen directamente en el kernel. Este tipo de kernel se utiliza en sistemas operativos como Windows NT y Linux.| Los kernels híbridos son muy parecidos a los microkernels puros, excepto porque incluyen código adicional en el espacio de kernel para que se ejecute más rápidamente. |
|Exokernels| Desarrollado con fines de investigación por el grupo de Sistemas Operativos y Paralelos y Distribuidos del MIT. Reduce su función a la multiplexación segura de los recursos físicos. La idea principal de los exokernels es permitir una mayor eficiencia en el uso de los recursos del sistema, ya que el software de usuario tiene un mayor control sobre cómo se utilizan los recursos. Esto también permite una mayor flexibilidad en cuanto a la implementación de servicios de sistema| Los exokernels no facilitan ninguna abstracción, pero permiten el uso de bibliotecas que proporcionan mayor funcionalidad gracias al acceso casi directo al hardware. Algunos Ejemplos son: Nemesis, ExOs |

### :zap: Users vs KernelMode
El kernel mode y el user mode son dos modos diferentes en los que un sistema operativo puede ejecutar un programa o proceso.

![image](https://user-images.githubusercontent.com/18681538/214368951-d4776d90-16d0-4d8d-8176-1dc178104480.png)

#### Users
 - El sistema está en modo de usuario cuando el sistema operativo está ejecutando una aplicación de usuario, como el manejo de un editor de texto. La transición del modo usuario al modo kernel ocurre cuando la aplicación solicita la ayuda del sistema operativo o se produce una interrupción o una llamada al sistema.
 
 - Tiene acceso limitado a los recursos del sistema operativo, como la memoria, los dispositivos de entrada/salida y los controladores de dispositivos. Esto es para evitar que un programa o proceso dañe el sistema operativo o otros programas al acceder a recursos que no debería. 

 - El bit de modo se establece en 1 en el modo de usuario. Se cambia de 1 a 0 cuando se cambia del modo usuario al modo kernel.
 
#### KernelMode
- El sistema se inicia en modo kernel cuando arranca y después de cargar el sistema operativo, ejecuta aplicaciones en modo usuario. Hay algunas instrucciones privilegiadas que solo se pueden ejecutar en modo kernel.

-  Se utiliza para los programas o procesos que realizan funciones críticas para el sistema operativo, como el administrador de memoria, el administrador de procesos y los controladores de dispositivos. Los programas o procesos que se ejecutan en modo kernel tienen acceso total a toda la memoria del sistema,

- El bit de modo se establece en 0 en el modo kernel. Se cambia de 0 a 1 cuando se cambia del modo kernel al modo usuario.



