import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/rewards/reward_component.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/home/article.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: 'RecyApp',
      currentIndex: 0,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Agendar coleta"))),
                SizedBox(width: 10),
                Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Histórico de coltes"))),
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
                  imagePath: Images.map,
                  likes: 12,
                ),
                Article(
                  title: "Como reciclar plástico em casa",
                  content: "Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar. Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar. Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar.",
                  imagePath: Images.map,
                  likes: 12,
                ),
                Article(
                    title: "Como reciclar plástico em casa",
                    content: "Plástico é um dos materiais mais comuns em casa. Inflizmente, ele também é um dos materiais mais difíceis de se recilar.",
                    imagePath: Images.map,
                    likes: 12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}