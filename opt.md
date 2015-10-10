## OPT

Aplicaciones es un conjunto de módulos más metadatos y tienen un cilclo de vida definido: start, stop
Si quieres crear una app OTP conviene crear un Application Callback

Si quiren hacer algo que saben que se va a tardar se debe usar un Task.
y normalmente se crea un loop con recursion para recibir mensajes y procésandolos

Lo que se debe usar en el caso anterior de manera apropiada es un Gen server

que tiene OTP behaviour
Abstrae la funcionalidad de un servidor
No necesita lidiar con mensajes
No necesitas lidiar con un loop

Com se usa:

use GenServer
def init(_)

init/1
Se llama cuando se invoca start_link
handle_call recibe una petición y responde de manera síncrona.
Regresa una tupla y es enviada a quin llamó la función

Si ponene :noreply, stagte quien lo llamó no recibe respuesta


handle_cast y se procesa de forma asíncrona

regresa
:noreply, state y no importa que se reciba respuesta





