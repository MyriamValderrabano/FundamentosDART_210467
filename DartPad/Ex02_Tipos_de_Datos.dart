void main() {
  //Practica 04: Tipos de Datos en Dart
  final String pokemon='Ditto';
  final int hp=100;
  final bool isAlive =true;
  
  //Listas 
  final List<String> abilities=['Impact: Trueno', 'Cola de Hierro','Ataque rapido'];
  final sprites=<String> ['ditto/front.png','ditto/back.png'];
  
  print (""" El pokemon que elegiste es: $pokemon
  ----------------------------------------------------
  Las estadisticas de $pokemon son:
  Vida (HP): $hp
  Estatus de Vida: $isAlive
  Habilidades: $abilities
  Imagen: $sprites
  
  """
  );
}