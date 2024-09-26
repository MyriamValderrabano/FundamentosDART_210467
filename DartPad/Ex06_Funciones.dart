void main(){

  final double totalCarList;
// 1. Llamado de una funcion sin parametro
greetEveryone();

//2. Llamado de una funcion que retorna valores

//  a) Sin almacenar el valor de una variable
print("Hoy es el dia numero: ${getDayNumber()} del mes.");

//  b) Alamcenando el valor de la funcion en una nueva variable
final int diaMes;
diaMes= getDayNumber();
print("En tres dias sera: ${diaMes+3}");

//3. Llamado de una funcion con un solo parametro obligatorio

  //a. Llamado correcto
print (greetSomeone("Myriam"));

  //b. En caso de que la funcion este declarada como <dynamic>
  print(greetSomeone(4));
  print(greetSomeone(-312));
  print(greetSomeone(3.141516));
  print(greetSomeone(true));
  print("------------------------------------------------");

  /*//C. Mismo experimento pero ahora con la funcion con parametros tipados
  print(greetSomeoneTyped(4));
  print(greetSomeoneTyped(-312));
  print(greetSomeoneTyped(3.141516));
  print(greetSomeoneTyped(true));*/

  //3.2
  //print(greetSomeone()); //Esta no se puede ejecutar
  //porque sino se define los paremtros de una funcion por default estan definidos como obligatorios

  //4 Llamado de una funcion con parametros opcionales
  //4.1 Enviando ambos parametros.
  print(greetHourOfDay("Myriam",20));
  print(greetHourOfDay("Cris",null));


 //5. Funciones Lambda - Las funciones lambda, mejor conocidas como funciones simplificadas, se ejecutan de manera simple y no frcuente en la ejecucion de un programa o sistema
var calculaCosto=(double productQuantity, double productPrice, double percentageDiscount ) => (productQuantity * productPrice)*((100-percentageDiscount)/100);
double cantidadProducto = 5;
double precioProducto = 125.50;
double descuento = 2.5;
print("""
Costo del producto: ${precioProducto}
    Cantidad: ${cantidadProducto}
    Descuento: ${descuento}
-------------------------------------------------------------------------
Costo del carrito de compras: ${calculaCosto(cantidadProducto,precioProducto,descuento)}
""");

  //6 Llamada de uan funcion con parametros nombre
print(infoCarListStatus(buyerName: "Myriam"));
  //6.1 Llamado de una funcion en desorden posicional
  print(infoCarListStatus(
    status: "En espera de pago",
    amountCarList: 2416.20,
    buyerName: "Cristian"
  ));

}



// FUNCIONES Y PARAMETROS
//Declaracion
//1. Funcion sin parametros, sin retornos de valor

void greetEveryone()
{
print("Hola a Todos y Todas :D");
}
//2. Funcion sin parametros, que retorna datos

int getDayNumber()
{
DateTime now= DateTime.now();
int day=now.day;
return day;
}

//3. Funcion que recibe un parametro, en DART si no se especifica como opcional siempre sera obligatorio
String greetSomeone(personName)
{
return("Hola ${personName}");
}

// 3.1 Tipando el parametro de Entrada
String greetSomeoneTyped(String personName)
{
  return("Hola, ${personName}");
}


//4. FUNCION CON PAREMTROS OPCIONALES
String greetHourOfDay(String personName, [int? hora])//puede ser opcional
{
  hora ??=DateTime.now().hour; // si es nulo entonces ...
  print("Hora: ${hora}");
  String saludo;

  if(hora >=6 && hora<12)
  {
      saludo="Buenos Dias";

  }
  else if(hora>12 && hora<18)
  {
      saludo="Buenas Tardes";
  }
  else
  {
      saludo="Buenas Noches";
  }

  return "${saludo}, ${personName}";
}




// 6.FUNCIONES CON PARAMETROS NOMBRADOS
String infoCarListStatus(
  {required String buyerName,
   double amountCarList=0.0,
   String status ="Seleccion de productos"}){
  return "El carrito de compras de: ${buyerName}, tiene un total de: \$${amountCarList} y actualmente esta en status de:${status}";
   }


















