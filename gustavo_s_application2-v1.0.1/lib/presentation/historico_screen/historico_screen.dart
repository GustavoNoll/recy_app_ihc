import '../historico_screen/widgets/chipviewtag10_item_widget.dart';
import '../historico_screen/widgets/chipviewtag4_item_widget.dart';
import '../historico_screen/widgets/chipviewtag6_item_widget.dart';
import '../historico_screen/widgets/chipviewtag8_item_widget.dart';
import '../historico_screen/widgets/chipviewtag_six_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/presentation/enderecos_page/enderecos_page.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:gustavo_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HistoricoScreen extends StatelessWidget {
  HistoricoScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft3(context);
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
                decoration: AppDecoration.fill,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 53, top: 18, right: 53, bottom: 18),
                          decoration: AppDecoration.outline2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 1, top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Você possui",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.headlineLarge),
                                          Container(
                                              margin: getMargin(bottom: 7),
                                              padding:
                                                  getPadding(left: 3, right: 3),
                                              decoration: AppDecoration.fill2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPointsimage,
                                                        height: getSize(25),
                                                        width: getSize(25),
                                                        margin: getMargin(
                                                            top: 3, bottom: 3)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 7),
                                                        child: Text("300",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .headlineLargeLight))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("pontos",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.headlineLarge)),
                                Padding(
                                    padding: getPadding(top: 17),
                                    child: Text("Ver recompensas",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodyLargeBlue800))
                              ])),
                      Container(
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.outline2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rua XYZ, 123",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge),
                                          Text("01/02/2023",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Wrap(
                                              runSpacing: getVerticalSize(5),
                                              spacing: getHorizontalSize(5),
                                              children: List<Widget>.generate(
                                                  3,
                                                  (index) =>
                                                      Chipviewtag4ItemWidget())),
                                          Container(
                                              margin: getMargin(bottom: 1),
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 2,
                                                  right: 3,
                                                  bottom: 2),
                                              decoration: AppDecoration.fill2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
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
                                                        child: Text("+50",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodyLargeLight))
                                                  ]))
                                        ]))
                              ])),
                      Container(
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.outline2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rua XYZ, 123",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge),
                                          Text("01/02/2023",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Wrap(
                                              runSpacing: getVerticalSize(5),
                                              spacing: getHorizontalSize(5),
                                              children: List<Widget>.generate(
                                                  3,
                                                  (index) =>
                                                      Chipviewtag6ItemWidget())),
                                          Container(
                                              margin: getMargin(bottom: 1),
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 2,
                                                  right: 3,
                                                  bottom: 2),
                                              decoration: AppDecoration.fill2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
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
                                                        child: Text("+50",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodyLargeLight))
                                                  ]))
                                        ]))
                              ])),
                      Container(
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.outline2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rua XYZ, 123",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge),
                                          Text("01/02/2023",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Wrap(
                                              runSpacing: getVerticalSize(5),
                                              spacing: getHorizontalSize(5),
                                              children: List<Widget>.generate(
                                                  3,
                                                  (index) =>
                                                      ChipviewtagSixItemWidget())),
                                          Container(
                                              margin: getMargin(bottom: 1),
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 2,
                                                  right: 3,
                                                  bottom: 2),
                                              decoration: AppDecoration.fill2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
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
                                                        child: Text("+50",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodyLargeLight))
                                                  ]))
                                        ]))
                              ])),
                      Container(
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.outline2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rua XYZ, 123",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge),
                                          Text("01/02/2023",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Wrap(
                                              runSpacing: getVerticalSize(5),
                                              spacing: getHorizontalSize(5),
                                              children: List<Widget>.generate(
                                                  3,
                                                  (index) =>
                                                      Chipviewtag8ItemWidget())),
                                          Container(
                                              margin: getMargin(bottom: 1),
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 2,
                                                  right: 3,
                                                  bottom: 2),
                                              decoration: AppDecoration.fill2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
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
                                                        child: Text("+50",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodyLargeLight))
                                                  ]))
                                        ]))
                              ])),
                      Container(
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.outline2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rua XYZ, 123",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge),
                                          Text("01/02/2023",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Wrap(
                                              runSpacing: getVerticalSize(5),
                                              spacing: getHorizontalSize(5),
                                              children: List<Widget>.generate(
                                                  3,
                                                  (index) =>
                                                      Chipviewtag10ItemWidget())),
                                          Container(
                                              margin: getMargin(bottom: 1),
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 2,
                                                  right: 3,
                                                  bottom: 2),
                                              decoration: AppDecoration.fill2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
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
                                                        child: Text("+50",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodyLargeLight))
                                                  ]))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(bottom: 5),
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.outline2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rua XYZ, 123",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge),
                                          Text("01/02/2023",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(67),
                                              padding: getPadding(all: 5),
                                              decoration: AppDecoration.txtFill
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5),
                                              child: Text("Plástico",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          Container(
                                              width: getHorizontalSize(49),
                                              margin: getMargin(left: 10),
                                              padding: getPadding(all: 5),
                                              decoration: AppDecoration.txtFill
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5),
                                              child: Text("Vidro",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          Container(
                                              width: getHorizontalSize(51),
                                              margin: getMargin(left: 10),
                                              padding: getPadding(all: 5),
                                              decoration: AppDecoration.txtFill
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder5),
                                              child: Text("Metal",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          Spacer(),
                                          Container(
                                              width: getHorizontalSize(73),
                                              margin: getMargin(bottom: 1),
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 2,
                                                  right: 3,
                                                  bottom: 2),
                                              decoration: AppDecoration.fill2
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
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
                                                        child: Text("+50",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .bodyLargeLight))
                                                  ]))
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
  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
