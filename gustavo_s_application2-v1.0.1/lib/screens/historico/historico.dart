import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/common/points.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:gustavo_s_application2/routes.dart';

class HistoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(style: BorderStyle.solid, width: 2, color: Colors.grey.shade700),
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
              Text("Rua XYZ, 123"),
              Text("01/02/2023"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  FilterChip(
                    label: Text('Plástico'),
                    selectedColor: Colors.blue,
                    selected: true,
                    showCheckmark: false,
                    onSelected: (_) {},
                  ),
                  SizedBox(width: 5),
                  FilterChip(
                    label: Text('Vidro'),
                    selectedColor: Colors.blue,
                    selected: true,
                    showCheckmark: false,
                    onSelected: (_) {},
                  ),
                  SizedBox(width: 5),
                  FilterChip(
                    label: Text('Metal'),
                    selectedColor: Colors.blue,
                    selected: true,
                    showCheckmark: false,
                    onSelected: (_) {},
                  ),
                ],
              ),
              Points("+50"),
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
                SizedBox(height: 40,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Você possui ", style: TextStyle(fontSize: 24)),
                    Points("1000", style: TextStyle(
                      fontSize: 20
                    ),),
                  ],
                ),
                Text("pontos!", style: TextStyle(fontSize: 24)),
                SizedBox(height: 20,),
                TextButton(
                    onPressed: () {

                    },
                    child: Text("Ver recompensas...")
                )
              ],
            )
          ),
          Container(
            child: Column(
              children: List.generate(10, (index) => HistoryItem()),
            ),
          )
        ],
      ),
    );
  }
}