import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/common/page.dart';
import 'package:gustavo_s_application2/screens/rewards/reward_component.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/home/article.dart';
import 'package:gustavo_s_application2/routes.dart';
import 'package:gustavo_s_application2/widgets/map/map.dart';

import '../../widgets/articles/articles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPage(Column(children: [
      Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      AppRoutes.push(context, AppRoutes.coleta);
                    },
                    child: Text("Agendar coleta"))),
            SizedBox(width: 10),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      AppRoutes.push(context, AppRoutes.history);
                    },
                    child: Text("Histórico de coletas"))),
          ],
        ),
      ),
      MapWidget(),
      ArticlesWidget()
    ]));
  }
}
