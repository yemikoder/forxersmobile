import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../texts/appText.dart';

class TitleSub extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleSub({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(title, fontSize: 16.sp,),
          CaptionText(subtitle, color: AppColors.secondaryText,),
        ],
      ),
    );
  }
}
