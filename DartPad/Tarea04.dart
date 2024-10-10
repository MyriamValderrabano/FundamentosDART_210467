void main() {

  // Caso 1: Registrar un nuevo paciente
  print("Caso 1: Nuevo paciente que se registra hoy\n");

  // Crea un objeto Paciente con todos sus datos y lo añde a la lista
  final myriamCortes = Paciente(
    id: 200,
    nombre: "Myriam",
    primerApellido: "Valderrano",
    segundoApellido: "Cortes",
    genero: Genero.mujer,
    grupoSanguineo: GrupoSanguineo.OPositivo,
    curp: "VACM031227MPLLRYA0",
    fechaNacimiento: DateTime(2003, 12, 27),
    estatusVida: EstatusVida.Vivo,
    estatusMedico: "estable",
    nss: "35170399412",
    tipoSeguro: TipoSeguro.IMSS,
    fechaUltimaCita: DateTime.now(),
    fechaRegistro: DateTime.now(),
  );

  // Agrega el paciente a la lista muestra los datos
  print(myriamCortes);

  // Actualiza el estatus de vida del paciente a "Fallecido".
  myriamCortes.estatusVida = EstatusVida.Fallecido; 
  print("Nuevo estatus de vida: ${myriamCortes.estatusVida}");

  // Caso 2: Registrar a una paciente ex-trabajadora del hospital.
  print("\nCaso 2: Paciente que alguna vez fue trabajador del hospital\n");

  // Crea y agrega un nuevo paciente con cierta informacion
  final marianaValderrabano = Paciente(
    id: 300,
    nombre: "Mariana",
    primerApellido: "Valderrabano",
    segundoApellido: null, 
    genero: Genero.mujer,
    grupoSanguineo: GrupoSanguineo.OPositivo,
    curp: "MFL123456789",
    fechaNacimiento: DateTime(2001, 05, 21),
    estatusVida: EstatusVida.Vivo,
    estatusMedico: "ex-trabajadora",
    nss: "134763762",
    tipoSeguro: TipoSeguro.ISSSTE,
    fechaUltimaCita: DateTime.now(),
    fechaRegistro: DateTime.now().subtract(Duration(days: 100)),
  );

  // Agrega y muestra los datos de Mariana.
  print(marianaValderrabano); 

  // Caso 3: Registrar a un paciente que acaba de fallecer.
  print("\nCaso 3: Paciente que acaba de fallecer\n");

  // Crea y agrega un nuevo paciente.
  final victorHernandez = Paciente(
    id: 400,
    nombre: "Victor",
    primerApellido: "Hernández",
    segundoApellido: "Hernández",
    genero: Genero.hombre,
    grupoSanguineo: GrupoSanguineo.OPositivo,
    curp: "VHH123456789",
    fechaNacimiento: DateTime(1999, 10, 01),
    estatusVida: EstatusVida.Vivo,
    estatusMedico: "crítico",
    nss: "17362818",
    tipoSeguro: TipoSeguro.SeguroPopular,
    fechaUltimaCita: DateTime.now(),
    fechaRegistro: DateTime.now().subtract(Duration(days: 90)),
  );

  // Actualiza el estatus de vida a "Fallecido" y registra la defunción.
  victorHernandez.registroDefuncion(
    motivo: "Muerte natural", 
    hora: DateTime.now(),
  );
  print(victorHernandez); 

 
}

// Definiciones de enumeraciones para estados de vida, tipos de seguro, grupos sanguíneos y géneros.
enum EstatusVida { Vivo, Fallecido }
enum TipoSeguro { IMSS, ISSSTE, SeguroPopular }
enum GrupoSanguineo { OPositivo, ONegativo, APositivo, ANegativo, BPositivo, BNegativo, ABPositivo, ABNegativo }
enum Genero { hombre, mujer, otro }

// Clase abstracta que define una persona con información básica.
abstract class Persona {
  int id; 
  String nombre; 
  String primerApellido; 
  String? segundoApellido; 
  Genero genero; 
  GrupoSanguineo grupoSanguineo; 
  String? curp; 
  DateTime fechaNacimiento; 
  bool estatus; 
  DateTime fechaRegistro; 
  DateTime? fechaActualizacion; 

  // Constructor para inicializar los atributos de una persona.
  Persona({
    required this.id,
    required this.nombre,
    required this.primerApellido,
    this.segundoApellido,
    required this.genero,
    required this.grupoSanguineo,
    this.curp,
    required this.fechaNacimiento,
    this.estatus = true, 
    DateTime? fechaRegistro,
    this.fechaActualizacion,
  }) : fechaRegistro = fechaRegistro ?? DateTime.now(); 

  // Método para mostrar la información de la persona
  @override
  String toString() {
    // Formato de fechas y estatus.
    String formatFechaNacimiento = "${fechaNacimiento.day.toString().padLeft(2, '0')}/" +
        "${fechaNacimiento.month.toString().padLeft(2, '0')}/${fechaNacimiento.year}";

    String formatFechaRegistro = "${fechaRegistro.day.toString().padLeft(2, '0')}/" +
        "${fechaRegistro.month.toString().padLeft(2, '0')}/${fechaRegistro.year} " +
        "${fechaRegistro.hour.toString().padLeft(2, '0')}:" +
        "${fechaRegistro.minute.toString().padLeft(2, '0')}:" +
        "${fechaRegistro.second.toString().padLeft(2, '0')}"; 

    // Formateo del CURP y estatus.
    curp ??= "No registrado";
    String status = estatus ? "Activo" : "Inactivo";

    // Retorna los datos de la persona.
    return """
      --------------------------------------------------------------
      DATOS DE LA PERSONA
      --------------------------------------------------------------
      ID: $id,
      Nombre: $nombre $primerApellido ${segundoApellido ?? ""}
      Género: ${genero.name} 
      Grupo Sanguíneo: ${grupoSanguineo.name} 
      Fecha de nacimiento: $formatFechaNacimiento
      CURP: $curp
      Estatus: $status
      Fecha de registro: $formatFechaRegistro
      --------------------------------------------------------------
    """;
  }
}

// Clase Paciente que extiende de Persona, añadiendo atributos específicos para un paciente.
class Paciente extends Persona {
  EstatusVida estatusVida; 
  String estatusMedico; 
  String nss; 
  TipoSeguro tipoSeguro; 
  DateTime fechaUltimaCita; 

  // Constructor para inicializar un paciente.
  Paciente({
    required int id,
    required String nombre,
    required String primerApellido,
    String? segundoApellido,
    required Genero genero,
    required GrupoSanguineo grupoSanguineo,
    String? curp,
    required DateTime fechaNacimiento,
    required this.estatusVida,
    required this.estatusMedico,
    required this.nss,
    required this.tipoSeguro,
    required this.fechaUltimaCita,
    required DateTime fechaRegistro,
  }) : super(
            id: id,
            nombre: nombre,
            primerApellido: primerApellido,
            segundoApellido: segundoApellido,
            genero: genero,
            grupoSanguineo: grupoSanguineo,
            curp: curp,
            fechaNacimiento: fechaNacimiento,
            fechaRegistro: fechaRegistro);

  // Método para registrar la defunción del paciente.
  void registroDefuncion({required String motivo, DateTime? hora}) {
    estatusVida = EstatusVida.Fallecido; // Actualiza el estado de vida.
    print("Registro de defunción: $motivo. Hora: ${hora ?? DateTime.now()}"); // Muestra un mensaje.
  }

  // Sobreescribe el método toString para incluir información específica del paciente.
  @override
  String toString() {
    String output = super.toString(); // Llama al método de la clase base.
    output += "Estatus vida: ${estatusVida.name}\n" + 
              "Estatus médico: $estatusMedico\n" + 
              "NSS: $nss\n" + 
              "Tipo de seguro: ${tipoSeguro.name}\n" + 
              "Fecha de última cita: ${fechaUltimaCita.day.toString().padLeft(2, '0')}/" + 
              "${fechaUltimaCita.month.toString().padLeft(2, '0')}/${fechaUltimaCita.year}\n";
    return output; // Retorna la información completa del paciente.
  }
}
