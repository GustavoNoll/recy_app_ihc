import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/data/localizacao_data.dart';
import 'package:gustavo_s_application2/screens/addresses/addresses.dart';
import 'package:gustavo_s_application2/screens/coleta/coleta.dart';
import 'package:gustavo_s_application2/screens/coleta/coleta_dados.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/historico/historico.dart';
import 'package:gustavo_s_application2/screens/historico_recompensas/historico_recompensas.dart';
import 'package:gustavo_s_application2/screens/register_address/register_address.dart';
import 'package:gustavo_s_application2/screens/rewards/rewards.dart';
import 'package:gustavo_s_application2/screens/home/home.dart';

enum AppRoutes {
  home(name: "/home"),
  history(name: "/history"),
  adresses(name: "/adresses"),
  history_recompensas(name: "/history_recompensas"),
  coleta(name: "/coleta"),
  coletaDados(name: "/coleta_dados"),
  registerAddress(name: "/register_address");

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

    if (currentState == null) return;

    Navigator.of(context).pushNamedAndRemoveUntil("/", (route) => false);
    currentState!.switchToTab(index);
  }

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home.name: (context) => App(),
    AppRoutes.history_recompensas.name: (context) => HistoryRecompensasPage(),
    AppRoutes.adresses.name: (context) => AddressesPage(),
    AppRoutes.history.name: (context) => HistoryPage(),
    AppRoutes.coleta.name: (context) => ColectionScreen(),
    AppRoutes.coletaDados.name: (context) => CollectionDataScreen(),
    AppRoutes.registerAddress.name: (context) => RegisterAddressPage(),
  };
}
