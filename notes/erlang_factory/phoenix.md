## Phoenix

Connection
* endpoint
* router
* controller
* action
* process data

Plug en elixir es una funcion que toma datos, los procesa y el resultado se lo pasa a otra funcion
Conn es un scruct que contiene informacion a cerca de el request que se hizo al controller
el conn tiene la informacion que se envia a la vista

Phoenix es una serie de plugs interconectados
Phoenix respeta una estructura, donde el principal es el web, donde esta los modelos, los controladores, los assets y los channels para la comunicacion asincrona, directorio de test, directorio privado.

Phoenix maneja ambiente de desarrollo, produccion y test, cada ambiente tiene su archivo de configuracion.
Dentro de una aplicacion de phoenix podemos tener varios endpoints
Despues de endpoint tenemos el router que contiene una serie de plugs, maneja las peticiones, donde se manejan las sesiones, se validan las petiones, rutas antes de pasarlas a los controladores.

En todos se definen cuales son los plugs que se tienen que ejecutar.
de las tutas s egeneran funciones _path _url

Los controladores tienen una serie de plugs donde se verifica autentificacion, dentro de los controladores hay acciones donde se maneja la lógica propia de la aplciación.

La librería de hector permite la conexión a la base de datos. El repositorio es el que maneja la persistencia de la base de datos y sabe como conectarse a la base de datos.

Las migraciones dependen de un DSL, en el caso del modelo contiene la definición del esquema, contiene el changeset que es un mapa que registra los cambios que va sufriendo el modelo, en el caso de las vistas las plantillas están compiladas.
