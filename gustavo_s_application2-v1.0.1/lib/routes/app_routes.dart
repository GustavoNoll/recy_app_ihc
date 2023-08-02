import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/presentation/enderecos_container_screen/enderecos_container_screen.dart';
import 'package:gustavo_s_application2/presentation/sucesso_screen/sucesso_screen.dart';
import 'package:gustavo_s_application2/presentation/agendar_screen/agendar_screen.dart';
import 'package:gustavo_s_application2/presentation/historico_screen/historico_screen.dart';
import 'package:gustavo_s_application2/presentation/recompensa_screen/recompensa_screen.dart';
import 'package:gustavo_s_application2/presentation/recompensas_tab_container_screen/recompensas_tab_container_screen.dart';
import 'package:gustavo_s_application2/presentation/artigo_screen/artigo_screen.dart';
import 'package:gustavo_s_application2/presentation/home_screen/home_screen.dart';
import 'package:gustavo_s_application2/presentation/enderecos_page/enderecos_page.dart';
import 'package:gustavo_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:gustavo_s_application2/presentation/recompensas_page/recompensas_page.dart';

class AppRoutes {
  static const String enderecosPage = '/enderecos_page';
  static const String enderecosContainerScreen = '/enderecos_container_screen';
  static const String sucessoScreen = '/sucesso_screen';
  static const String agendarScreen = '/agendar_screen';
  static const String historicoScreen = '/historico_screen';
  static const String recompensaScreen = '/recompensa_screen';
  static const String recompensasPage = '/recompensas_page';
  static const String recompensasTabContainerScreen = '/recompensas_tab_container_screen';
  static const String artigoScreen = '/artigo_screen';
  static const String homeScreen = '/home_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    enderecosPage: (context) => EnderecosPage(),
    enderecosContainerScreen: (context) => EnderecosContainerScreen(),
    sucessoScreen: (context) => SucessoScreen(),
    agendarScreen: (context) => AgendarScreen(),
    historicoScreen: (context) => HistoricoScreen(),
    recompensaScreen: (context) => RecompensaScreen(),
    recompensasPage: (context) => RecompensasPage(),
    recompensasTabContainerScreen: (context) => RecompensasTabContainerScreen(),
    artigoScreen: (context) => ArtigoScreen(),
    homeScreen: (context) => HomeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
