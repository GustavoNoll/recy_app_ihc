import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class RecompensasItemWidget extends StatelessWidget {
  const RecompensasItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fill3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
            height: getVerticalSize(
              105,
            ),
            width: getHorizontalSize(
              181,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    top: 5,
                    bottom: 4,
                  ),
                  child: Text(
                    "5% off nos produtos Walmart",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyLargeLight17,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    73,
                  ),
                  margin: getMargin(
                    left: 13,
                  ),
                  padding: getPadding(
                    left: 3,
                    top: 2,
                    right: 3,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.fill2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPointsimage,
                        height: getSize(
                          25,
                        ),
                        width: getSize(
                          25,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                          bottom: 2,
                        ),
                        child: Text(
                          "300",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodyLargeLight,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
