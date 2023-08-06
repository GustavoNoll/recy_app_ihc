import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/core/constants/rewards.dart';
import 'package:gustavo_s_application2/data/user_data.dart';
import 'package:gustavo_s_application2/screens/common/points.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class ClaimedRewardCard extends StatelessWidget {
  final ClaimedReward claimedReward;

  ClaimedRewardCard({
    required this.claimedReward,
  });

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
      padding: EdgeInsetsDirectional.all(10),
      constraints: BoxConstraints(maxHeight: 150),
      child: Row(
        children: [
          Image.asset(
            rewards
                .firstWhere((element) => element.id == claimedReward.rewardId)
                .imagePath,
            height: 150.0,
            width: 150.0,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rewards
                      .firstWhere(
                          (element) => element.id == claimedReward.rewardId)
                      .title,
                  textWidthBasis: TextWidthBasis.parent,
                  maxLines: 1,
                  style:
                      TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis),
                ),
                Expanded(
                  child: Text(
                    rewards
                        .firstWhere(
                            (element) => element.id == claimedReward.rewardId)
                        .description,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Pontos gastos:",
                    ),
                    Points(rewards
                        .firstWhere(
                            (element) => element.id == claimedReward.rewardId)
                        .cost
                        .toString()),
                  ],
                ),
                Text(
                  "Resgatado em: ${claimedReward.claimedAt.toString()}",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryRecompensasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      title: "Histórico de recompensas coletadas",
      body: Column(
        children: [
          for (var claimedReward
              in context.watch<UserDataState>().claimedRewards.reversed)
            ClaimedRewardCard(claimedReward: claimedReward)
        ],
      ),
    );
  }
}
