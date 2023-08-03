import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  String title;
  Widget body;
  CustomScreen({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: body,
      ),
    );
  }
}