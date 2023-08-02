import '../home_screen/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/presentation/enderecos_page/enderecos_page.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:gustavo_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_bottom_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft6(context);
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
                decoration: AppDecoration.fill,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 10, top: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                    text: "Agendar coleta",
                                    leftIcon: Container(
                                        margin: getMargin(right: 10),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSend)),
                                    buttonStyle: CustomButtonStyles
                                        .fillLightblueA700
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(getHorizontalSize(181),
                                                        getVerticalSize(50)))),
                                    buttonTextStyle: CustomTextStyles
                                        .bodyLargeRobotoMonoWhiteA700),
                                Container(
                                    width: getHorizontalSize(181),
                                    margin: getMargin(left: 10),
                                    padding: getPadding(
                                        left: 20, top: 2, right: 20, bottom: 2),
                                    decoration: AppDecoration.fill4.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder14),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSend,
                                          height: getVerticalSize(22),
                                          width: getHorizontalSize(20),
                                          margin:
                                              getMargin(top: 11, bottom: 11)),
                                      Container(
                                          width: getHorizontalSize(98),
                                          margin: getMargin(left: 16, top: 1),
                                          child: Text("Historico de coletas",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyLargeRobotoMonoWhiteA700))
                                    ]))
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle2,
                          height: getVerticalSize(300),
                          width: getHorizontalSize(393),
                          margin: getMargin(top: 10)),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 10, top: 10, right: 10),
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: getVerticalSize(1));
                                  },
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return HomeItemWidget();
                                  }))),
                      Container(
                          margin: getMargin(left: 10, top: 10, right: 10),
                          decoration: AppDecoration.fill3.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArticleimage,
                                height: getVerticalSize(136),
                                width: getHorizontalSize(186)),
                            Padding(
                                padding: getPadding(left: 10, top: 7),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Article Title",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              CustomTextStyles.titleLargeBold),
                                      Container(
                                          width: getHorizontalSize(164),
                                          margin: getMargin(top: 4),
                                          child: Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                              maxLines: 7,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleSmall))
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
  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
