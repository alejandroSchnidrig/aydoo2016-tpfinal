Revisor: Lucas Del Rio

Observación 1: Falta modelar excepciones para ingreso de vida y masa menores a cero.
Respuesta: Se toma en cuenta, en un principio decidi que el objeto creado inicie con vida y masa igual a 100 por default pero decidi cambiarlo ya que me parece mas "natural" que se puedan
elegir los valores de la vida y masa  al crear el objeto. Se tiene en cuenta lo del ingreso de vida y masa menores a cero pero no con excepcines sino que con un metodo.

Observación 2: Inicializa vida y masa en objeto_espacial y en cada objeto con los mismos valores"
Respuesta: Se toma en cuenta, se explica en la observacion 1.

Observación 3: Faltan setters para los efectos.
Respuesta: Lo descarto no me parecen necesarios ya que cada efecto tiene asignado un valor fijo dependiendo del choque.

Observación 4: Clase Choques no tiene inteligencia, solo hace de intermediario.
Respuesta: Puede que tenga poca logica y haga uso de metodos de otros objetos pero creo que es una clase necesaria para abstraer la logica de los choques.  
