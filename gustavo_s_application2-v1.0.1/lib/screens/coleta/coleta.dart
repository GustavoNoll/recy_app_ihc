import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/common/points.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:gustavo_s_application2/routes.dart';

class LocationItem extends StatelessWidget {
  String icon;
  String name;
  String address;

  LocationItem({required this.name, required this.address, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRoutes.push(context, AppRoutes.coletaDados);
      },
      child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(style: BorderStyle.solid, width: 2, color: Colors.grey.shade700),
            ),
            color: Colors.white,
          ),
          padding: EdgeInsetsDirectional.all(10),
          width: double.infinity,
          child: Row(
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
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      address,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
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
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Rua Sertório, 4300',
                ),
              )
          ),
          Container(
            child: Column(
              children: [
                LocationItem(name: "Localização Atual", address: "Rua XYZ, 123", icon: Images.localizacaoAtual),
                LocationItem(name: "Casa", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
                LocationItem(name: "Escritório", address: "Rua XYZ, 123", icon: Images.local),
              ],
            ),
          )
        ],
      ),
    );
  }
}
