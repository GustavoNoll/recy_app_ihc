import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/common/page.dart';
import 'package:gustavo_s_application2/screens/rewards/reward_component.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/home/article.dart';
import 'package:gustavo_s_application2/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
        Column(
            children: [
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
                            child: Text("Agendar coleta")
                        )
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              AppRoutes.push(context, AppRoutes.history);
                            },
                            child: Text("Histórico de coltes")
                        )
                    ),
                  ],
                ),
              ),
              Image.asset(Images.map),
              Container(
                padding: EdgeInsets.all(10),
                child: Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    Article(
                      title: "Como reciclar plástico em casa",
                      content: "Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar.",
                      imagePath: Images.article,
                      likes: 12,
                    ),
                    Article(
                      title: "Como reciclar plástico em casa",
                      content: "Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar.",
                      imagePath: Images.article,
                      likes: 12,
                    ),
                    Article(
                      title: "Como reciclar plástico em casa",
                      content: "Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar.",
                      imagePath: Images.article,
                      likes: 12,
                    ),
                    Article(
                      title: "Como reciclar plástico em casa",
                      content: "Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar.",
                      imagePath: Images.article,
                      likes: 12,
                    ),
                  ],
                ),
              ),
            ]
        )
    );
  }
}