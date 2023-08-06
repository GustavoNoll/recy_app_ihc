import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/data/rewards_data.dart';
import 'package:gustavo_s_application2/screens/common/points.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class RewardDialog extends StatelessWidget {
  final RewardData reward;

  RewardDialog({
    required this.reward,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              reward.imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              reward.title,
              textWidthBasis: TextWidthBasis.parent,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(height: 10),
            Container(
              constraints: BoxConstraints(maxHeight: 200),
              child: SingleChildScrollView(
                child: Text(
                  reward.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TapRegion(
                  onTapInside: (_) {
                    if (Provider.of<UserDataState>(context, listen: false)
                        .claimReward(reward.id)) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("O item ${reward.title} foi resgatado."),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text("O item ${reward.title} não foi resgatado."),
                      ));
                    }
                  },
                  child: Points(
                      "Resgatar por " + reward.cost.toString() + " pontos"),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class RewardItem extends StatelessWidget {
  final RewardData reward;

  RewardItem({
    required this.reward,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return RewardDialog(
                  reward: this.reward,
                );
              });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
          ),
          constraints: BoxConstraints(maxHeight: 500),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                reward.imagePath,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    reward.title,
                    textWidthBasis: TextWidthBasis.parent,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 17, overflow: TextOverflow.ellipsis),
                  )),
                  SizedBox(width: 5),
                  Points(reward.cost.toString()),
                ],
              )
            ],
          ),
        ));
  }
}
