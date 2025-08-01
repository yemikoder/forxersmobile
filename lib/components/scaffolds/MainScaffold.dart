import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? floatingButton;
  final Color? backgroundColor;
  final EdgeInsets horizontalPadding;
  final bool isFixed;
  final List<Widget>? actions;
  final bool centerTitle;
  final String? titleText;
  final ScrollPhysics? physics;

  const MainScaffold({
    Key? key,
    this.appBar,
    this.floatingButton,
    this.backgroundColor,
    this.isFixed = false,
    this.centerTitle = true,
    this.actions,
    this.horizontalPadding = const EdgeInsets.symmetric(horizontal: 16),
    required this.child,
    this.physics = const AlwaysScrollableScrollPhysics(),
    this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final hasFloatingButton = floatingButton != null;

    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   scrolledUnderElevation: 0,
      //   actions: actions,
      //   title: Text(
      //     titleText ?? '',
      //     style: theme.textTheme.displayLarge?.copyWith(
      //       fontSize: 19.sp,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      //   centerTitle: centerTitle,
      // ),
      backgroundColor: backgroundColor ?? Colors.black,
      body: SafeArea(
        child: SizedBox(
          height: media.height,
          width: media.width,
          child: Stack(
            children: [
              // Main content
              isFixed
                  ? Container(
                margin: horizontalPadding,
                child: child,
              )
                  : SingleChildScrollView(
                physics: physics,
                child: Container(
                  margin: horizontalPadding,
                  child: child,
                ),
              ),

              // Floating Button
              if (hasFloatingButton)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                    color: Colors.white,
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
