void main ()
{
  //Repaso de Clases en Dart
  //Instanciamos la clase Heroe
  print("Heroe 1 ---------------------------------------------");
  final wolverine=Hero("Logan","Regeneracion");
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  print("Heroe 2 ---------------------------------------------");
  final scarletWitch=Hero("Magia del caos","Wanda");
  
  print(scarletWitch);
  print(scarletWitch.name);
  print(scarletWitch.power);

  final xmen=Team(type:"Heroes",name:"X-men");
  print(xmen);
  print(xmen.name);
  print(xmen.type);

  final justiceLeague=Team(name:"La liga de la Justicia");
  print(justiceLeague);
  print(justiceLeague.name);
  print(justiceLeague.type);

//Intentamos instanciar la clase con solo el valor tipo, y no lo permite porque la propiedad de nombre es requerida
  //final hydra=Team(type:"Villanos");
}



//Clase con propiedades posicionales
class Hero
{
  String name;
  String power;

  Hero(String pName, String pPower):

    name=pName,
    power=pPower;

}
//Clase con propiedades no psocionales y nombradas
class Team
{
  String name;
  String type;
//El constructor de la clase siempre debe llevar el mismo nombre de la clase
  Team({required this.name, this.type="No definido"});
}