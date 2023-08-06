import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/data/localizacao_data.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class RegisterAddressPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterAddressPage();
  }
}

class _RegisterAddressPage extends State<RegisterAddressPage> {
  LocalizacaoData localizacaoData = LocalizacaoData(-1, "Título", "Endereço");

  void setTitle(String newTitle) {
    setState(() {
      localizacaoData.title = newTitle;
    });
  }

  void setEndereco(String newEndereco) {
    setState(() {
      localizacaoData.endereco = newEndereco;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      title: "Registre um endereço",
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: new InputDecoration(labelText: "Título"),
              onChanged: (value) => setTitle(value),
            ),
            TextField(
              decoration: new InputDecoration(labelText: "Endereço"),
              onChanged: (value) => setEndereco(value),
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<LocalizacaoDataState>(context, listen: false)
                      .addLocalizacao(localizacaoData);
                  Navigator.of(context).popUntil(ModalRoute.withName('/'));
                },
                child: Text("Registrar novo endereço"))
          ],
        ),
      ),
    );
  }
}
