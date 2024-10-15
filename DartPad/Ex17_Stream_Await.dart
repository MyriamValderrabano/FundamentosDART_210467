void main() {
  
  //Llama a la función emitNumbers y empieza a escuchar  a los valores que emite
  emitNumber()
     .listen( (int value) {
        //imprime el texto y el valor recibido
       print( 'Stream value: $value' );
       
     }); 
}

// Define una función llamada emitNumber que devuelve un Stream de enteros INT, Asyn es un generador asincrono, emite valores de manera ssincrona
Stream<int> emitNumber() async* {
  

  //crea una lista llamada valuesToEmit contiene numeros de 1 al 5
  final valuesToEmit = [1,2,3,4,5];
  
  //nicia un bucle que itera de forma secuencial sobre cada número en la lista valuesToEmit, Es decir para cada valor se ejecuta el codigo el bucle
  for( int i in valuesToEmit ) {
    await Future.delayed( const Duration(seconds: 1));// espera 1s
    yield i;// es la forma de devolver un valor asincrono
  }
  
  
}