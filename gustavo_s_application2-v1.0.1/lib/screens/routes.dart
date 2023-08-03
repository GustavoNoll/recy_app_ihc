import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/rewards/rewards.dart';
import 'package:gustavo_s_application2/screens/home/home.dart';

enum AppRoutes {
  home(name: "/home"),
  rewards(name: "/rewards");

  final String name;
  const AppRoutes({required this.name});

  // Routing utilities
  static void push(BuildContext context, AppRoutes route) {
    Navigator.pushNamed(context, route.name);
  }

  static Map<String, WidgetBuilder> routes = {
  AppRoutes.home.name: (context) => HomeScreen(),
  AppRoutes.rewards.name: (context) => RewardsScreen(),
  };
}