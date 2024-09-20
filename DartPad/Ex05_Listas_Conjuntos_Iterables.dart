void main() {
  //Listas(LIST)
  //La declaracion de una LIST esta limitada por corchetes(BRACKETS), y cada elemento de ser individual y puede repetirse
  final numeros=[1,2,2,2,3,4,5,6,7,7,7,7,8,8,9,10];
  
  print("Ejemplo de LIST: $numeros");
  print("Confirmamos el tipo de datos para NUMEROS que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta informacion de una lista tal como: ");
  print("El tamaño: ${numeros.length}");
  print("""
  Para acceder a los elementos debemos especificar la posicion entre []
  El primer elemento de la primer posicion es: ${numeros[0]}
  El elemento de la segunda posicion es: ${numeros[1]}, siempre respetando la posicion   -1
  El ultimo elemento de la lista sería: ${numeros[numeros.length-1]}
  
  -----------------------------------------------------------------
  De igual manera existen las siguientes alternativas
  Primer elemento ${numeros.first}
  Ultimo elemento ${numeros.last}
  
  -----------------------------------------------------------------
  Tambien tendremos acceso a metodos que permiten la transformacion o flitrado del contenido
  Por ejemplo usar reversed, para invertir el orden original: ${numeros.reversed}
  Es importante observar que la funcion reversed ha transformado la LIST original y la retorna en un iterable 


  """);

  //Iterables
  final numeroAlReves= numeros.reversed;
  print("Los iterables son estrcuturas de datos que DART y otros lenguajes para optimizar en terminos de velocidad al cceso a los datos y propiedades:");
  print("Ejemplo de un ITERABLE: $numeroAlReves");
  print("Confirmamos el tipo de datos para NUMEROSALREVES que es: ${numeroAlReves.runtimeType}");
  print("De igual manera podemos transformar una LISTA e ITERABLE y viceversa");
  print("Covertimos el ITERABLE A LISTA usando . toList(): ${numeroAlReves.toList()} y verificamos su tipo de Dato ${numeroAlReves.toList().runtimeType}");


    
  //Conjunto de Dtaos(SET)
  // Un SET es una estructura de datos utilizada por DART, que simplifica los elemento eliminando los duplicados

  print(""" Veamos que pasa con los Conjuntos (SET)
  Convertimos el iterable en un SET usando .toSET.${numeros.toSet()}
  Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora delimita los datos usando {}.
  """);

  //De igyal manera podemos realizar operaciones para el filtro de elemntos usando .where()

  final numerosMayoresA5=numeros.where((int num){return num > 5;});

  print("""Hemos filtrado sobre la LIST solo los elementos mayores a 5: 
  Resultado de Filtro: ${numerosMayoresA5}
  """);
  print("Eliminamos los duplicados ... ${numerosMayoresA5.toSet()}");
}
