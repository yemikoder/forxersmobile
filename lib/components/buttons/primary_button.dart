import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../config/brandstyle_config.dart';
import 'inner_shadow.dart';

class PrimaryButton extends StatelessWidget {
  final Color? buttonColor;
  final Color? titleColor;
  final Color? iconColor;
  final double? iconSize;
  final Widget iconWidget;
  final String? title;
  final String? icon;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;
  final bool disabled;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.iconWidget = const SizedBox(),
    this.iconColor = Colors.white,
    this.iconSize = 5,
    this.buttonColor = BrandStyleConfig.primary,
    this.titleColor = Colors.black,
    this.icon = '',
    this.disabled = false,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool hasIcon = icon != null && icon!.isNotEmpty;

    return Container(
      width: MediaQuery.of(context).size.width,
      //clipBehavior: Clip.antiAlias,
      alignment: Alignment.topCenter,
      decoration: !disabled
          ? BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: BrandStyleConfig.primary
      )
          : null,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all<Color>(
              disabled ? const Color(0xFF898E93) : Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          shadowColor: MaterialStateProperty.all(Colors.grey),
        ),
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (hasIcon)
                Image.asset(
                  icon!,
                  color: iconColor,
                  scale: iconSize,
                )
              else
                iconWidget,
              SizedBox(width: 2.w),
              Text(
                title ?? '',
                style: TextStyle(
                  color: titleColor,
                  fontSize: 17,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                  letterSpacing: -0.20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
