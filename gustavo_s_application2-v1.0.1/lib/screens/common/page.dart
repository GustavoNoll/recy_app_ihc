import 'package:flutter/cupertino.dart';

class CustomPage extends StatelessWidget {
  Widget body;
  CustomPage(this.body);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: body,
    );
  }
}
