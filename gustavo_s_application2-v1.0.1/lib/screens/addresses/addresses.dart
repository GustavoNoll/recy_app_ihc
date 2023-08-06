import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:provider/provider.dart';

import '../../images.dart';
import '../../main.dart';
import '../coleta/coleta.dart';

class AddressesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      title: "Endereços registrados",
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
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
