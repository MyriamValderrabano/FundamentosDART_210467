void main() async {
  
  //async indica que esta función contiene operaciones asíncronas
  //ASINCRONO:  ES la capacidad de realizar múltiples tareas al mismo tiempo sin que una tarea tenga que esperar a que otra termine
  print('Inicio del programa');
  
  try {//el bloque intena ejecutar lo de adentro, y si hay un error no se detiene 
    
    //Llama a la función httpGet con una URL y espera a que se complete (await), la respuest5a se guarda en value
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( value );// se imprime la respuesta si hubo exito
    
  } catch (err) {
    print('Tenemos un error: $err');//se ejcuta el bloquye por si hay un error Y el err captura el error
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async {
  //Esta función es asíncrona y devuelve un Future, que representa un valor que estará disponible más tarde
  await Future.delayed( const Duration(seconds: 1));//Simula un retraso como si estuviera esperando una respuesta
  
  throw 'Error en la petición';//lanza un error
  
//   return 'Tenemos un valor de la petición';
  
}