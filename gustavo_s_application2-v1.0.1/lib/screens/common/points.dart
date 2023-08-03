import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/images.dart';

class Points extends StatelessWidget {
  final int cost;

  Points(this.cost);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color.fromARGB(255, 214, 243, 215),
        ),
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Images.points,
              height: 20,
            ),
            Text(
              (" " + cost.toString()),
              style: TextStyle(
                  fontSize: 13,
                color: Colors.black
              ),
            ),
          ],
        )
    );
  }
}
