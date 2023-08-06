import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/data/localizacao_data.dart';

class LocationRow extends StatelessWidget {
  final LocalizacaoData localizacaoData;
  final String icon;

  LocationRow({required this.localizacaoData, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Image.asset(
            icon,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localizacaoData.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                localizacaoData.endereco,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
