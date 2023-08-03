import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/rewards/reward_component.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => RewardsScreenState();
}

class RewardsScreenState extends State<RewardsScreen> {
  List<RewardItem> rewards = [
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
    RewardItem(title: '50% off em produtos Walmart', description: 'Compre produtos Walmart e saia com decontos', cost: 123, imagePath: ImageConstant.imgRectangle2),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: 'Recompensas',
      body: Container(
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
      currentIndex: 1,
    );
  }
}
