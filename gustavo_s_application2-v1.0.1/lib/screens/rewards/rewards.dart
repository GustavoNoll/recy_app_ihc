import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/images.dart';
import 'package:gustavo_s_application2/screens/common/page.dart';
import 'package:gustavo_s_application2/screens/rewards/reward_component.dart';
import 'package:gustavo_s_application2/screens/common/tag_selector.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => RewardsScreenState();
}

class RewardsScreenState extends State<RewardsScreen> {
  List<RewardItem> rewards = [
    RewardItem(title: '5% off no Walmart', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 1, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 12, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 1234, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
    RewardItem(title: '5% off no Walmart', description: 'Compre produtos em supermercados Walmart e receba 5% de deconto. ', cost: 123, imagePath: Images.walmart),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomPage(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Descontos em produtos de limpeza...',
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: TagBar(
                    tags: [
                      TagSelection("Descontos", false),
                      TagSelection("Cupons", false),
                      TagSelection("Produtos", false),
                    ],
                    onChange: (tag) {
                      print(tag.label + " is now " + tag.selected.toString());
                    },
                  )
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: rewards,
                ),
              ),
            ]
        )
    );
  }
}
