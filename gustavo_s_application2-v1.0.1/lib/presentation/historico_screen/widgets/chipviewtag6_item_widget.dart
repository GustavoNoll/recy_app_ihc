import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewtag6ItemWidget extends StatelessWidget {
  const Chipviewtag6ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 5,
        right: 5,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Plástico",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: appTheme.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.lightGreen100,
      selectedColor: appTheme.lightGreen100,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            5,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
