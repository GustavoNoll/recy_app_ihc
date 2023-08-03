import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/theme/theme_helper.dart';
import 'package:gustavo_s_application2/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(NewMyApp());
}

class NewMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'ReciApp',
      home: App(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home.name,
      routes: AppRoutes.routes,
    );
  }
}