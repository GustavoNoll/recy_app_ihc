import 'package:flutter/material.dart';
import 'package:gustavo_s_application2/core/app_export.dart';
import 'package:gustavo_s_application2/presentation/enderecos_page/enderecos_page.dart';
import 'package:gustavo_s_application2/presentation/recompensas_page/recompensas_page.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:gustavo_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:gustavo_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_bottom_bar.dart';
import 'package:gustavo_s_application2/widgets/custom_text_form_field.dart';

class RecompensasTabContainerScreen extends StatefulWidget {
  const RecompensasTabContainerScreen({Key? key}) : super(key: key);

  @override
  RecompensasTabContainerScreenState createState() =>
      RecompensasTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class RecompensasTabContainerScreenState
    extends State<RecompensasTabContainerScreen> with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController textController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(42),
                leadingWidth: 25,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(18),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 7, top: 9, bottom: 9),
                    onTap: () {
                      onTapArrowleft5(context);
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
                      Container(
                          padding: getPadding(all: 10),
                          decoration: AppDecoration.outline1,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(373),
                                    decoration: AppDecoration.fill3,
                                    child: CustomTextFormField(
                                        controller: textController,
                                        margin: getMargin(left: 16),
                                        contentPadding:
                                            getPadding(top: 11, bottom: 11),
                                        textStyle: CustomTextStyles
                                            .bodyLargeSFProTextGray8005b,
                                        hintText: "Text...",
                                        hintStyle: CustomTextStyles
                                            .bodyLargeSFProTextGray8005b,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30, top: 13, bottom: 13),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgClose)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(44)),
                                        defaultBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray8005b,
                                        enabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray8005b,
                                        focusedBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray8005b,
                                        disabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray8005b)),
                                Container(
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(373),
                                    margin: getMargin(top: 10),
                                    child: TabBar(
                                        controller: tabviewController,
                                        tabs: [
                                          Tab(
                                              child: Text("Label",
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                          Tab(
                                              child: Text("Label",
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                          Tab(
                                              child: Text("Label",
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                          Tab(
                                              child: Text("Label",
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                          Tab(
                                              child: Text("Label",
                                                  overflow:
                                                      TextOverflow.ellipsis))
                                        ]))
                              ])),
                      Expanded(
                          child: SizedBox(
                              height: getVerticalSize(632),
                              child: TabBarView(
                                  controller: tabviewController,
                                  children: [
                                    RecompensasPage(),
                                    RecompensasPage(),
                                    RecompensasPage(),
                                    RecompensasPage(),
                                    RecompensasPage()
                                  ])))
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
  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
