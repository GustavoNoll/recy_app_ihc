import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/common/points.dart';

class RewardDialog extends StatelessWidget {
  final String title;
  final String description;
  final int cost;
  final String imagePath;

  RewardDialog({required this.title, required this.description, required this.cost, required this.imagePath});

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
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  textWidthBasis: TextWidthBasis.parent,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  constraints: BoxConstraints(maxHeight: 200),
                  child: SingleChildScrollView(
                    child: Text(
                      description,
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
                    Points("Resgatar por " + cost.toString() + " pontos"),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

class RewardItem extends StatelessWidget {
  final String title;
  final String description;
  final int cost;
  final String imagePath;

  RewardItem({required this.title, required this.description, required this.cost, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(context: context, builder: (context) {
            return RewardDialog(title: title, description: description, cost: cost, imagePath: imagePath);
          });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
          ),
          constraints: BoxConstraints(
              maxHeight: 500
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
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
                        title,
                        textWidthBasis: TextWidthBasis.parent,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 17,
                            overflow: TextOverflow.ellipsis
                        ),
                      )
                  ),
                  SizedBox(width: 5),
                  Points(cost.toString()),
                ],
              )
            ],
          ),
        )
    );
  }
}