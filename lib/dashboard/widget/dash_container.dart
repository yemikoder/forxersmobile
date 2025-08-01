import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/gap.dart';
import '../../constants/colors.dart';
import '../../texts/appText.dart';

class DashContainer extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final String image;
  final String subtitle;
  const DashContainer({super.key, required this.onTap, required this.title, required this.image, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 43.w,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: AppColors.foreground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.red,
                child: TitleText("20", color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w500),
              )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(height: 4.h,),
                Center(child: Image.asset(image, scale: 3.5,)),
                Gap(height: 2.h,),
                Center(child: TitleText(title, fontSize: 16.sp, fontWeight: FontWeight.w500,)),
                Center(child: CaptionText(subtitle, color: AppColors.secondaryText, fontSize: 12),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
