import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:gustavo_s_application2/routes.dart';
import 'package:provider/provider.dart';

import '../../data/localizacao_data.dart';
import '../../main.dart';
import '../../widgets/location_row.dart';

class LocationItem extends StatelessWidget {
  final LocalizacaoData localizacaoData;
  final String icon;

  LocationItem({required this.localizacaoData, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<AgendaColetaState>(context, listen: false)
            .set(localizacaoData);
        localizacaoData.id =
            Provider.of<LocalizacaoDataState>(context, listen: false)
                .addLocalizacao(localizacaoData);
        AppRoutes.push(context, AppRoutes.coletaDados);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                style: BorderStyle.solid,
                width: 2,
                color: Colors.grey.shade700),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsetsDirectional.all(10),
        width: double.infinity,
        child: LocationRow(localizacaoData: localizacaoData, icon: icon),
      ),
    );
  }
}

class ColectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      title: "Agendar coleta",
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Acesse as configurações para registrar novo endereços.",
            ),
          ),
          Container(
            child: Column(
              children: [
                LocationItem(
                    localizacaoData: LocalizacaoData(
                        -1,
                        "Localização Atual",
                        // Gera número entre 100 e 999: Random().nextInt(899) + 100
                        "---, ${Random().nextInt(899) + 100}"),
                    icon: Images.localizacaoAtual),
                for (var localizao
                    in context.watch<LocalizacaoDataState>().localizacoes)
                  LocationItem(localizacaoData: localizao, icon: Images.local)
              ],
            ),
          )
        ],
      ),
    );
  }
}
