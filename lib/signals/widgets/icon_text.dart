import 'package:flutter/material.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:sizer/sizer.dart';

import '../../components/gap.dart';
import '../../texts/appText.dart';

class IconText extends StatelessWidget {
  final String image;
  final String title;
  final void Function()? onTap;
  const IconText({super.key, required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(image, height: 60,),
          Gap(height: 1.h,),
          CaptionText(title, color: AppColors.secondaryText, fontSize: 14,),
        ],
      ),
    );
  }
}
