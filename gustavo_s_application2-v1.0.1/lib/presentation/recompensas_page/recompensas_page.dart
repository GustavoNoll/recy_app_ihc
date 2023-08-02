import '../recompensas_page/widgets/recompensas_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RecompensasPage extends StatefulWidget {
  const RecompensasPage({Key? key})
      : super(
          key: key,
        );

  @override
  RecompensasPageState createState() => RecompensasPageState();
}

class RecompensasPageState extends State<RecompensasPage>
    with AutomaticKeepAliveClientMixin<RecompensasPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            decoration: AppDecoration.fill1,
            margin: getMargin(
              top: 10,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(
                  157,
                ),
                crossAxisCount: 2,
                mainAxisSpacing: getHorizontalSize(
                  10,
                ),
                crossAxisSpacing: getHorizontalSize(
                  10,
                ),
              ),
              physics: BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return RecompensasItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
