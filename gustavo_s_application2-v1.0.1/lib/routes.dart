import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/screens/coleta/coleta.dart';
import 'package:gustavo_s_application2/screens/coleta/coleta_dados.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/historico/historico.dart';
import 'package:gustavo_s_application2/screens/rewards/rewards.dart';
import 'package:gustavo_s_application2/screens/home/home.dart';

enum AppRoutes {
  home(name: "/home"),
  history(name: "/history"),
  coleta(name: "/coleta"),
  coletaDados(name: "/coleta_dados");

  final String name;
  const AppRoutes({required this.name});

  // Routing utilities
  static void push(BuildContext context, AppRoutes route) {
    Navigator.pushNamed(context, route.name);
  }

  static void replace(BuildContext context, AppRoutes route) {
    Navigator.pushReplacementNamed(context, route.name);
  }

  static void pushBottom(BuildContext context, AppRoutes route) {
    Navigator.pushNamedAndRemoveUntil(context, route.name, (route) => false);
  }

  static void animateTo(BuildContext context, int index) {
    return;

    if (currentState == null)
      return;

    Navigator.of(context).pushNamedAndRemoveUntil("/", (route) => false);
    currentState!.switchToTab(index);
  }

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home.name: (context) => App(),
    AppRoutes.history.name: (context) => HistoryPage(),
    AppRoutes.coleta.name: (context) => ColectionScreen(),
    AppRoutes.coletaDados.name: (context) => CollectionDataScreen(),
  };
}