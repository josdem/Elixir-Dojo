## BEAM

¿Qué incluye la BEAM?

* Máquina virtual
* Mecanismos para comunicarse con el mundo exterior
  * Utiliza puertos y NIF's y la BEAM los trata como procesos de erlang
* No JIT

Cosas importantes del BEAM

* Procesos: El objetivo ideal de un proceso es que está ailado no comparten memoria u otros recursos.
* Los procesos se transmiten mensajes entre ellos.
* Las funcionalidades dentro de un proceso deberian estar aislados y la unica manera de comunicarse entre ellos es el paso de mensajes
* El scheduler, es responsable de ir procesando un core dentro de mi máquina, si tengo una máquina con 8 cores, al menos tengo 8 schedulers.
* Cada scheduler tiene asociando un thread del sistema operativo.
* Cada scheduler tiene una cola de ejecución
* Los schedulers hacen el balanceo de carga
* Cada proceso es reencolado para su ejecución después de 2000 reducciones esto garantiza que ningún proceso puede bloquear a otro.
* Cada proceso cuando se inicia ocupa 2kb donde cada proceso normalmente en un sistema operativo es de 1MB.
* La memoria esta dividida en varias secciones
  * Heap del proceso
  * Tablas ETS
  * Tablas de atomos
  * Espacio para binarios grandes(64 bites)

### Heap del proceso

* Permite recolectar cada proceso de manera independiente
* El colector de basura trata cada proceso por separado.
* Los procesos pueden terminar y no pasar por el recolector de basura.
*

### Colector de basura

* 2 espacios o zonas la nueva y la vieja
* Los datos nuevos se van a la memoria nueva

El diseño de la BEAM es difenrentes a otras VM conocidas.

El diseño de la BEAM está pensando en aislamiento, tolerante a fallos, baja latencia y alta disponibilidad.
Erlang funciona muy parecido a un concepto muy conocido por todos Internet.

### Preguntas

* Norberto usa FSB como SO
* Se guarda un HEAP global del sistema operativo
* Si tienes un binario grande, lo saca del proceso y te pasa el apuntador.
* El truco es saber cuando usar un proceso y cuando debes usar una funcion.
