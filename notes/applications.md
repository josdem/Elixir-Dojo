### Applications

* Pool boy
* ¿Cuándo debo iniciar procesos?
* ¿Cómo puedo supervisar mis procesos?
* ¿Qué estrategia debo utilizar?

Por cada request que llega al server, todo corre en su propio proceso, Phoenix app
-> proceso del S.O
socket web
Conexión DB


Phoenix APP
Mix APP
MIX APP
MIX APP

Se usa one for one en:

* Validaciones
* Transformacion de archivos
* Carga de estado inicial costosa
* Cada proceso es independitene y no comparten informacion}

one for all
Si un proceso termina tdos los procesos son terminados y despues reiniciados.

* Conexión a WebService con un token único
* Comunicación entre procesos supervisados

rest for one

Si un proceso termina, todos los procesos son terminados en el orden que iniciaron.

Pool de procesos.

* Varios procesos del mismo módulo
* Cola de espera
* Estrategia de supervisión
* Todo lo que necesitas es un pool boy


