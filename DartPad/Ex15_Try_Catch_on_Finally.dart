void main() async {
  //funcion con operacion asincronas
  
  print('Inicio del programa');
  
  try {
    //lama a la función httpGet con una URL y espera a que termine (await).
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( 'éxito: $value' );// si tiene exito garda la respues en value, sino pasa a la siguiente parte del codigo
    
  } on Exception catch(err) {//captura especificamnete Excepciones y lo guarda en Err
    print('Tenemos una Exception: $err');
    
  } catch (err) {//captura cualquira otro tipo de error
    print('OOP!! algo terrible pasó: $err');// imprime con el detalle del error
    
  } finally {// se ejecuta siempre con exito o error
    print('Fin del try y catch');
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async { //Esta función es asíncrona y devuelve un Future, que es algo que sucederá en el futuro (es decir, no ocurre de inmediato)
  
  await Future.delayed( const Duration(seconds: 1));//Simula un retraso como si estuviera esperando una respuesta
  
  throw Exception('No hay parámetros en el URL');//simula un error
  
//   throw 'Error en la petición';
  
//   return 'Tenemos un valor de la petición';
  
}