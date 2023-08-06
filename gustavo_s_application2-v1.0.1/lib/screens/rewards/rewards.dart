import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/data/rewards_data.dart';
import 'package:gustavo_s_application2/screens/rewards/reward_component.dart';
import 'package:gustavo_s_application2/screens/common/tag_selector.dart';
import 'package:provider/provider.dart';

import '../../core/constants/rewards.dart';
import '../../main.dart';
import '../common/points.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => RewardsScreenState();
}

class RewardsScreenState extends State<RewardsScreen> {
  String _searchTerm = "";
  List<RewardCategories> _categories = [
    RewardCategories.CUPOM,
    RewardCategories.DESCONTO,
    RewardCategories.PRODUTO
  ];

  void setSearchTerm(String searchTerm) {
    setState(() {
      _searchTerm = searchTerm;
    });
  }

  void toggleTag(RewardCategories tag) {
    setState(() {
      if (_categories.contains(tag)) {
        _categories.remove(tag);
      } else {
        _categories.add(tag);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Você possui ", style: TextStyle(fontSize: 24)),
              Points(
                "${context.watch<UserDataState>().points}",
                style: TextStyle(fontSize: 20),
              ),
              Text("ponto(s)!", style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Pesquise por palavras que aparecem no título.",
            ),
            onSubmitted: setSearchTerm,
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: TagBar(
              tags: [
                TagSelection("Descontos",
                    _categories.contains(RewardCategories.DESCONTO)),
                TagSelection(
                    "Cupons", _categories.contains(RewardCategories.CUPOM)),
                TagSelection(
                    "Produtos", _categories.contains(RewardCategories.PRODUTO)),
              ],
              onChange: (tag) {
                switch (tag.label) {
                  case "Descontos":
                    toggleTag(RewardCategories.DESCONTO);
                    break;
                  case "Cupons":
                    toggleTag(RewardCategories.CUPOM);
                    break;
                  case "Produtos":
                    toggleTag(RewardCategories.PRODUTO);
                    break;
                  default:
                    print("Unexpected label: ${tag.label}.");
                    break;
                }
              },
            )),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                children: [
                  for (var reward in rewards.where((element) =>
                      element.categorias.any(
                          (categoria) => _categories.contains(categoria)) &&
                      element.title.contains(_searchTerm)))
                    RewardItem(reward: reward)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
