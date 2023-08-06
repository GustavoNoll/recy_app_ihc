enum TiposSacos { PLASTICO, VIDRO, PAPEL, METAL, ORGANICO, ELETRONICO }

int valorSaco(TiposSacos tipoSaco) {
  switch (tipoSaco) {
    case TiposSacos.PLASTICO:
      return 20;
    case TiposSacos.VIDRO:
      return 25;
    case TiposSacos.PAPEL:
      return 40;
    case TiposSacos.METAL:
      return 50;
    case TiposSacos.ORGANICO:
      return 35;
    case TiposSacos.ELETRONICO:
      return 75;
    default:
      return -1;
  }
}
