void main() {
  
  //Llama a la función emitNumbers y empieza a escuchar  a los valores que emite
  emitNumbers().listen( (value) {
     print('Stream value: $value');//imprime el texto y el valor recibido
  });
  
  
} 


Stream<int> emitNumbers() {//Define una función llamada emitNumbers que devuelve un Stream de enteros INT
  //Crea un stream que emite un nuevo valor cada segundo
  return Stream.periodic( const Duration(seconds: 1), (value){//toma un tiempo de espera y determina el valor que se emite
//     print('desde periodic $value');
    return value;
  }).take(5);
  
}