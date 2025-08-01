import 'package:flutter/material.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../config/brandstyle_config.dart';

class AppBarScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  final bool showFlash;
  final Widget? floatingButton;
  final Color? backgroundColor;
  final bool isFixed;
  final double? leadingWidth;
  final bool centerTitle;
  final EdgeInsets? horizontalPadding;
  final String? titleText;
  final ScrollPhysics? physics;
  final List<Widget>? actions;
  final bool showBack;
  final bool backFunction;
  final bool showBackText;
  final bool showAppBar;
  final void Function()? backTap;
  final PreferredSizeWidget? bottom;

  const AppBarScaffold({
    Key? key,
    this.appBar,
    this.backgroundColor,
    this.floatingButton,
    this.showFlash = false,
    this.isFixed = false,
    this.leadingWidth = 56,
    this.centerTitle = true,
    this.horizontalPadding = const EdgeInsets.symmetric(horizontal: 20),
    required this.child,
    this.actions,
    this.bottom,
    this.showBack = true,
    this.showBackText = false,
    this.showAppBar = true,
    this.backFunction = false,
    this.backTap,
    required this.titleText,
    this.physics = const BouncingScrollPhysics(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final isBackText = showBackText;
    final hasFloatingButton = floatingButton != null;

    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.black,
      resizeToAvoidBottomInset: true,
      appBar: showAppBar
          ? AppBar(
        scrolledUnderElevation: 0,
        leadingWidth: isBackText ? 100 : leadingWidth,
        bottom: bottom,
        backgroundColor: Colors.black,
        leading: showBack
            ? Padding(
          padding: const EdgeInsets.only(left: 16),
          child: InkWell(
            borderRadius: BorderRadius.circular(90),
            onTap: backFunction
                ? backTap
                : () {
              FocusScope.of(context).unfocus();
              Get.back();
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 2.5.h,
                  color: BrandStyleConfig.darkPrimary,
                ),
                if (isBackText)
                  Text(
                    "BACK",
                    style: theme.textTheme.displayLarge?.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: BrandStyleConfig.darkPrimary,
                    ),
                  ),
              ],
            ),
          ),
        )
            : SizedBox(),
        title: Text(
          titleText ?? '',
          style: theme.textTheme.displayLarge?.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            //color: Colors.black,
          ),
        ),
        centerTitle: centerTitle,
        actions: actions,
      )
          : null,
      body: SafeArea(
        child: SizedBox(
          height: media.height,
          width: media.width,
          child: Stack(
            children: [

              // Inner shadow at the bottom
              if(showFlash) IgnorePointer(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/splasheffect.png",)
                ),
              ),
              // Main Content
              isFixed
                  ? Container(
                margin: horizontalPadding,
                child: child,
              )
                  : SingleChildScrollView(
                physics: physics,
                reverse: true,
                child: Container(
                  margin: horizontalPadding,
                  child: child,
                ),
              ),
        
              // Floating Button (if any)
              if (hasFloatingButton)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: floatingButton!,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
