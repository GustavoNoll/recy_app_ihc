import 'package:flutter/material.dart';

import '../../core/constants/articles.dart';
import '../../data/articles_data.dart';
import '../../images.dart';
import '../../screens/home/article.dart';

class ArticlesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [for (var article in articles) ArticleCard(article: article)],
      ),
    );
  }
}
