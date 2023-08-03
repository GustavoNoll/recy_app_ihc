import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/screens/common/app.dart';
import 'package:gustavo_s_application2/screens/common/page.dart';
import 'package:gustavo_s_application2/screens/common/screen.dart';

class Article extends StatelessWidget {
  final String title;
  final String content;
  final String imagePath;
  final int likes;

  Article({ required this.title, required this.content, required this.imagePath, required this.likes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CustomScreen(
                title: 'Artigo',
                body: Text("Test")
            );
          }));
        },
        child:
        Container(
          constraints: BoxConstraints(
            maxHeight: 150,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 160,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                width: MediaQuery.of(context).size.width-180,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                        child: Text(
                          content,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 5,
                          textAlign: TextAlign.justify,
                        )
                    ),
                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Text(
                          "ler mais...",
                          textAlign: TextAlign.right,
                          softWrap: false,
                          style: TextStyle(
                            color: Colors.indigo.shade500
                          ),
                        ),
                        SizedBox(width: 10,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}