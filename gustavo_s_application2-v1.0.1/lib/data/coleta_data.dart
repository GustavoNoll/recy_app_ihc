import 'package:gustavo_s_application2/data/tipos_sacos.dart';

class SacoColetado {
  int quantidade;
  TiposSacos tipoSaco;

  SacoColetado(this.tipoSaco, this.quantidade);
}

class ColetaData {
  int id;
  int localizaoId;
  List<SacoColetado> sacos;
  DateTime timestamp;

  ColetaData(this.id, this.localizaoId, this.sacos, this.timestamp);
}
