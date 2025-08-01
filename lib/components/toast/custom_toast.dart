
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:sizer/sizer.dart';

class CustomToast {
  static void show(
      BuildContext context,
      String message, {
        Duration duration = const Duration(seconds: 2),
        Color backgroundColor = Colors.black87,
        Color textColor = Colors.white,
        double fontSize = 14.0,
        ToastPosition position = ToastPosition.bottom,
      }) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (_) => _ToastWidget(
        message: message,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: fontSize,
        position: position,
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration, () => overlayEntry.remove());
  }
}

enum ToastPosition { top, center, bottom }

class _ToastWidget extends StatelessWidget {
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final ToastPosition position;

  const _ToastWidget({
    required this.message,
    this.backgroundColor = AppColors.foreground3,
    this.textColor = AppColors.secondaryText,
    required this.fontSize,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    Alignment alignment;
    EdgeInsets margin;

    switch (position) {
      case ToastPosition.top:
        alignment = Alignment.topCenter;
        margin = const EdgeInsets.only(top: 50);
        break;
      case ToastPosition.center:
        alignment = Alignment.center;
        margin = EdgeInsets.zero;
        break;
      case ToastPosition.bottom:
      default:
        alignment = Alignment.bottomCenter;
        margin = const EdgeInsets.only(bottom: 80);
        break;
    }

    return IgnorePointer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Material(
          color: Colors.transparent,
          child: SafeArea(
            child: Container(
              alignment: alignment,
              margin: margin,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: 1.0,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/pngs/CheckIcon.png', height: 17,),

                      Gap(width: 4.w,),

                      Text(
                        message,
                        style: TextStyle(
                          color: textColor,
                          fontSize: fontSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
