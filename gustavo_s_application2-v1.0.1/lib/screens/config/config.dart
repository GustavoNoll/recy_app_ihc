import 'package:flutter/material.dart';

import '../../routes.dart';
import '../common/page.dart';

class ConfigScreenOption extends StatelessWidget {
  final String description;
  final AppRoutes route;

  const ConfigScreenOption({required this.description, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              style: BorderStyle.solid, width: 2, color: Colors.grey.shade700),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsetsDirectional.all(12),
      width: double.infinity,
      child: TapRegion(
        onTapInside: (_) {
          AppRoutes.push(context, this.route);
        },
        child: Text(
          this.description,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class ConfigScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConfigScreenOption(
            route: AppRoutes.history_recompensas,
            description: "Ver histórico de recompensas resgatadas",
          ),
          ConfigScreenOption(
            route: AppRoutes.adresses,
            description: "Ver endereços registrados",
          ),
          ConfigScreenOption(
            route: AppRoutes.registerAddress,
            description: "Registrar novo endereço",
          ),
          ConfigScreenOption(
            route: AppRoutes.history,
            description: "Ver histórioco de coletas",
          ),
        ],
      ),
    );
  }
}
