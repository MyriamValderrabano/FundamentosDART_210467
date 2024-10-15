void main() {
  
  print('Inicio del programa');
  

// Llama a la función httpGet y le pasa una URL, intenta obtener datos de la url, es como una peticion para recibir info
  httpGet('https://fernando-herrera.com/cursos')
    .then( //Indica que si la función httpGet tiene éxito, se ejecutará el siguiente bloque de código
      (value){//es donde se guardara la respuesta de la peticion
        print( value );
      })
    .catchError( (err) {//cierra el bloque si la peticion fueb exitosa
    print('Error: $err');//bloque por si ocurre un error
  });
  
  print('Fin del programa');
}


Future<String> httpGet( String url ){
  //Esta función es asíncrona y devuelve un Future, que es algo que sucederá en el futuro (es decir, no ocurre de inmediato)
  
  return Future.delayed( const Duration(seconds: 1), () {// Crea un Future que se completará después de 1 segundo, simula un retraso como si esperar una respuesta
    
    throw 'Error en la petición http';
    
//     return 'Respuesta de la petición http';
    
  });
  
}