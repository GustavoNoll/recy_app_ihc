import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/utils/sacos_coletados_to_points.dart';
import 'package:gustavo_s_application2/data/coleta_data.dart';
import 'package:gustavo_s_application2/data/localizacao_data.dart';
import 'package:gustavo_s_application2/screens/common/points.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class HistoryItemSacoColetado extends StatelessWidget {
  final SacoColetado sacoColetado;

  HistoryItemSacoColetado({required this.sacoColetado});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.blue,
      label: Text("${sacoColetado.tipoSaco.name} (${sacoColetado.quantidade})"),
    );
  }
}

class HistoryItem extends StatelessWidget {
  final ColetaData coleta;

  HistoryItem({required this.coleta});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              style: BorderStyle.solid, width: 2, color: Colors.grey.shade700),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsetsDirectional.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                (context.watch<LocalizacaoDataState>()).localizacoes.firstWhere(
                    (element) => element.id == coleta.localizaoId, orElse: () {
                  return LocalizacaoData(-1, "Not found", "");
                }).title,
                style: TextStyle(fontSize: 20),
              ),
              Text(coleta.timestamp.toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Wrap(
                  children: [
                    for (var sacoColetado in coleta.sacos)
                      HistoryItemSacoColetado(sacoColetado: sacoColetado)
                  ],
                ),
              ),
              Points("+${sacosColetadosToPoints(coleta.sacos).toString()}"),
            ],
          ),
        ],
      ),
    );
  }
}

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      title: "Histórico de Coletas",
      body: Column(
        children: [
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Você possui ", style: TextStyle(fontSize: 24)),
                  Points(
                    "${context.watch<UserDataState>().points}",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Text("pontos!", style: TextStyle(fontSize: 24)),
            ],
          )),
          Container(
            child: Column(
              children: [
                for (var coleta in context.watch<ColetaDataState>().coletas)
                  HistoryItem(coleta: coleta)
              ],
            ),
          )
        ],
      ),
    );
  }
}
