import '../sucesso_screen/widgets/chipviewtag_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/presentation/enderecos_page/enderecos_page.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:gustavo_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SucessoScreen extends StatelessWidget {
  SucessoScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft1(context);
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
                padding: getPadding(top: 35, bottom: 35),
                decoration: AppDecoration.fill,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(320),
                          margin: getMargin(left: 36, right: 36),
                          child: Text("Coleta agendada com sucesso!",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineLargeLight)),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 35, bottom: 5),
                          padding: getPadding(
                              left: 20, top: 19, right: 20, bottom: 19),
                          decoration: AppDecoration.fill1,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Wrap(
                                        runSpacing: getVerticalSize(5),
                                        spacing: getHorizontalSize(5),
                                        children: List<Widget>.generate(
                                            12,
                                            (index) =>
                                                ChipviewtagItemWidget()))),
                                Padding(
                                    padding: getPadding(top: 29),
                                    child: Text("Quantidade",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleLargeRegular)),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("5 sacos",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleLargeRegular)),
                                Padding(
                                    padding: getPadding(top: 29),
                                    child: Text("Data",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleLargeRegular)),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Text("06/05/2023  08:30",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.titleLargeRegular))
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
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
