
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class MemberContainers extends StatelessWidget {
  final String title;
  final String subtitle;
  final String splash;
  final Color color;
  final void Function()? onTap;
  const MemberContainers({super.key, required this.title, required this.subtitle, required this.splash, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 16.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.foreground /* Forground */,
          borderRadius: BorderRadius.circular(16),
          border: Border(
            left: BorderSide(
              color: color, // border color
              width: 2,         // border width
            ),
          ),
        ),
        child: Stack(
          children: [

            // Inner shadow at the bottom
            Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(splash,)
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFFFAFAFA) /* Primary-Text */,
                          fontSize: 20,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.40,
                          letterSpacing: -0.40,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Opacity(
                          opacity: 0.70,
                          child: Text(
                            subtitle,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFFA3A3A3) /* Secondary-Text */,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.43,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
