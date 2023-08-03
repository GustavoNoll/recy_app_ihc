import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/routes.dart';
import 'package:gustavo_s_application2/screens/coleta/coleta.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:gustavo_s_application2/screens/common/tag_selector.dart';
import 'package:gustavo_s_application2/screens/historico/historico.dart';
import 'package:gustavo_s_application2/screens/rewards/rewards.dart';
import 'package:gustavo_s_application2/screens/home/home.dart';

class CollectionDataScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CollectionDataScreenState();
  }
}

class CollectionDataScreenState extends State<CollectionDataScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
        title: "Agendar coleta",
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30,),
              Text(
                  "Tipo de lixo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
              ),
              SizedBox(height: 20,),

              Container(
                child: TagBar(
                  tags: [
                    TagSelection('Plástico', false),
                    TagSelection('Vidro', false),
                    TagSelection('Papel', false),
                    TagSelection('Metal', false),
                    TagSelection('Orgânico', false),
                    TagSelection('Eletrônico', false),
                  ],
                ),
              ),

              SizedBox(height: 30,),
              Text(
                "Quantidade",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              SizedBox(height: 20,),

              Container(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "1 saco",
                  ),
                ),
              ),

              SizedBox(height: 30,),
              Text(
                "Agendar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              SizedBox(height: 20,),

              ElevatedButton(
                child: Text("Agendar"),
                onPressed: () {
                  showDialog(context: context, builder: (context) => Dialog(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 30,),
                          Text(
                            "Agendamento realizado com sucesso!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  )).then((_) {
                    Navigator.of(context).popUntil(ModalRoute.withName('/'));
                  });
                },
              ),
            ],
        ),
      ),
    );
  }
}

