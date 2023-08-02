import '../agendar_screen/widgets/chipviewtag2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/presentation/enderecos_page/enderecos_page.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:gustavo_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_bottom_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_elevated_button.dart';
import 'package:gustavo_s_application2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AgendarScreen extends StatelessWidget {
  AgendarScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft2(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 5),
                    child: Row(children: [
                      AppbarSubtitle(text: "Voltar"),
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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgContent),
                        fit: BoxFit.cover)),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Spacer(),
                  Container(
                      padding: getPadding(all: 20),
                      decoration: AppDecoration.fill1,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Wrap(
                                    runSpacing: getVerticalSize(5),
                                    spacing: getHorizontalSize(5),
                                    children: List<Widget>.generate(5,
                                        (index) => Chipviewtag2ItemWidget()))),
                            Padding(
                                padding: getPadding(top: 29),
                                child: Text("Quantidade",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleLargeRegular)),
                            Container(
                                margin: getMargin(top: 9),
                                padding: getPadding(left: 9, right: 9),
                                decoration: AppDecoration.outline3.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 1, top: 4, bottom: 3),
                                          child: Text("-",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeLight)),
                                      CustomOutlinedButton(
                                          text: "1 saco",
                                          margin: getMargin(left: 11),
                                          buttonStyle: CustomButtonStyles
                                              .outlineBlack900
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .all<Size>(Size(
                                                              getHorizontalSize(
                                                                  74),
                                                              getVerticalSize(
                                                                  31)))),
                                          buttonTextStyle:
                                              CustomTextStyles.bodyLargeLight),
                                      Padding(
                                          padding: getPadding(
                                              left: 9, top: 5, bottom: 2),
                                          child: Text("+",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeLight))
                                    ])),
                            Padding(
                                padding: getPadding(top: 31),
                                child: Text("Agendar",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleLargeRegular)),
                            Padding(
                                padding: getPadding(top: 7),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(173),
                                          margin: getMargin(bottom: 1),
                                          padding: getPadding(
                                              left: 5,
                                              top: 4,
                                              right: 5,
                                              bottom: 4),
                                          decoration: AppDecoration.txtOutline
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtRoundedBorder5),
                                          child: Text("06/05/2023  08:30",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeLight)),
                                      CustomElevatedButton(
                                          text: "Label",
                                          leftIcon: Container(
                                              margin: getMargin(right: 10),
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSend)),
                                          buttonStyle: CustomButtonStyles
                                              .fillLightblueA700
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .all<Size>(Size(
                                                              getHorizontalSize(
                                                                  114),
                                                              getVerticalSize(
                                                                  34)))),
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumWhiteA700)
                                    ]))
                          ]))
                ])),
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
  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
