void main(){
  
  
  // DECLARANDO UNA VARIABLE GENERICA PARA EL NOMBRE
  var myName= 'Miriamm';
  String myLastName="Valderrabano";
  final int myDNI= 210467;
  late final int myAge;
  
  // CORREGIR EL NOMBRE
  myName="Myriam";
  
 // myDNI=210466; //UNA VEZ DECLARADO UNA VARIABLE CON FINAL NO SE PUEDE MODIFICAR
  
  print('Hola $myName $myLastName, tu matricula es: $myDNI y tu edad aun no la conozco, por que no se cuando naciste');
  
  print('\nHola, ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI  y tu edad aun no la conozco, por que no se cuando naciste');
  
}
