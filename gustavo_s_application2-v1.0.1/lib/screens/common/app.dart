import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/routes.dart';
import 'package:gustavo_s_application2/screens/common/points.dart';

class AppScreen extends StatelessWidget {
  AppScreen({required this.title, this.currentIndex, required this.body});

  int? currentIndex;
  Widget body;
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 239, 244),
      appBar: AppBar(
        title: Text(title),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Points(1000),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: body,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex == null ? -1 : currentIndex!,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home.name, (_) => false);
          } else if (index == 1) {
            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.rewards.name, (_) => false);
          } else if (index == 2) {
            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home.name, (_) => false);
          } else {}
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Recompensas',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'Configurações',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

}
