import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class EnderecosItemWidget extends StatelessWidget {
  EnderecosItemWidget({Key? key})
      : super(
          key: key,
        );

  TextEditingController grouponeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 10,
      ),
      decoration: AppDecoration.outline1,
      child: CustomTextFormField(
        controller: grouponeController,
        contentPadding: getPadding(
          left: 16,
          top: 11,
          bottom: 11,
        ),
        textStyle: CustomTextStyles.bodyLargeSFProTextGray8005b,
        hintText: "Text...",
        hintStyle: CustomTextStyles.bodyLargeSFProTextGray8005b,
        suffix: Container(
          margin: getMargin(
            left: 30,
            top: 13,
            bottom: 13,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgClose,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            44,
          ),
        ),
        filled: true,
        fillColor: appTheme.whiteA700,
      ),
    );
  }
}
