import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/presentation/enderecos_page/enderecos_page.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:gustavo_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_bottom_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class RecompensaScreen extends StatelessWidget {
  RecompensaScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(42),
                leadingWidth: 25,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(18),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 7, top: 9, bottom: 9),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 5),
                    child: Row(children: [
                      AppbarSubtitle(text: "Prev. Title"),
                      AppbarTitle(
                          text: "Center Title", margin: getMargin(left: 45))
                    ])),
                actions: [
                  AppbarSubtitle(
                      text: "Right Title",
                      margin:
                          getMargin(left: 16, top: 11, right: 16, bottom: 9))
                ],
                styleType: Style.bgOutline),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 36, top: 130, right: 36, bottom: 130),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgFrame7),
                        fit: BoxFit.cover)),
                child: Container(
                    margin: getMargin(left: 1, bottom: 1),
                    padding: getPadding(all: 10),
                    decoration: AppDecoration.fill1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4,
                              height: getVerticalSize(189),
                              width: getHorizontalSize(300)),
                          Container(
                              width: getHorizontalSize(225),
                              margin: getMargin(top: 7, right: 74),
                              child: Text("5% off em nos mercados Walmart",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleLargeRegular)),
                          Container(
                              margin: getMargin(top: 8),
                              decoration: AppDecoration.outline4,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: SizedBox(
                                            width: getHorizontalSize(290),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                                maxLines: 8,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyLarge))),
                                    Padding(
                                        padding: getPadding(left: 4),
                                        child: SizedBox(
                                            height: getVerticalSize(150),
                                            child: VerticalDivider(
                                                width: getHorizontalSize(5),
                                                thickness: getVerticalSize(5),
                                                color: appTheme.black900
                                                    .withOpacity(0.1),
                                                endIndent:
                                                    getHorizontalSize(50))))
                                  ])),
                          Padding(
                              padding: getPadding(top: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        padding: getPadding(left: 9, right: 9),
                                        decoration: AppDecoration.outline3
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4, bottom: 3),
                                                  child: Text("-",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyLargeLight)),
                                              CustomOutlinedButton(
                                                  text: "1",
                                                  margin: getMargin(left: 11),
                                                  buttonStyle: CustomButtonStyles
                                                      .outlineBlack900
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  getHorizontalSize(
                                                                      45),
                                                                  getVerticalSize(
                                                                      31)))),
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .bodyLargeLight),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 5,
                                                      bottom: 2),
                                                  child: Text("+",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyLargeLight))
                                            ])),
                                    Container(
                                        padding: getPadding(
                                            left: 3,
                                            top: 2,
                                            right: 3,
                                            bottom: 2),
                                        decoration: AppDecoration.fill2
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPointsimage,
                                                  height: getSize(25),
                                                  width: getSize(25)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7, bottom: 2),
                                                  child: Text("300",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyLargeLight))
                                            ]))
                                  ]))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Inicio:
        return AppRoutes.enderecosPage;
      case BottomBarEnum.Recompensas:
        return "/";
      case BottomBarEnum.Conta:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.enderecosPage:
        return EnderecosPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
