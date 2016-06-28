Aydoo 2016 Trabajo practico final - Alejandro Schnidrig

Decisiones de Diseño:

. Ya que todos los objetos presentes en el dominio del problema comparten las mismas caracteristicas decidi crear la clase ObjetoEspacial de la cual heredan el resto de los objetos
  espaciales.
. Cada ObjetoEspacial posee un Hash Map donde la clave es la clase con la que un objeto puede chocar(otro ObjetoEspacial), y el valor es el efecto que sufrirá ese objeto al chocar 
  con otro ObjetoEspacial. De esta manera se evita la cadena de if anidados.Tambien se pueden agregar nuevos ObjetosEspaciales y efectos al hashmap sin romper el principio open/close.
. Existen diferentes efectos que pueden afectar a los ObjetosEspaciales dependiendo de con que otro ObjetoEspacial choque.
. La clase choque es la encargada de realizar los choques entre dos ObjetosEspaciales y de verificar si alguno de los dos ObjetosEspaciales esta destruido antes de relizar el choque.
  Tambien es necesario duplicar el primer ObjetoEspacial del choque ya que se necesita guardar su estado pre-choque para afectar de manera correcta los valores del segundo Objeto
  espacial.
. En un principio decidi que cada ObjetoEspacial se cree con vida y masa igual a cien por default, las cuales se podian modificar a traves de sus respectivos setters, los cuales chequeaban
  que la vida  y la masa sean mayor a cero, y si no lo eran le daba el valor cero. Me parecio mejor cambiarlo para que al instancear el objeto se ingresen los valores deseados ya que
  de el modo anterior era mas restrictivo.
. En un principio un ObjetoEspacial tenia un atributo booleano que determinaba si estaba vivo o no. Decidi sacar este atributo y utilizar un metodo que retorna un valor booleano dependiendo
  de la vida del objeto para saber si esta muerto o no.
. El metodo actualizar_atributos de la clase ObjetoEspacial provoca "smells" ya que si habria mas atributos que actualizar se produciria un cadena de if con la implementacion actual.



