import '../../data/coleta_data.dart';
import '../../data/tipos_sacos.dart';

int sacosColetadosToPoints(List<SacoColetado> sacosColetados) {
  int sum = 0;

  for (var sacoColetado in sacosColetados)
    sum += valorSaco(sacoColetado.tipoSaco) * sacoColetado.quantidade;

  return sum;
}
