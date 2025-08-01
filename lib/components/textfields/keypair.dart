
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:sizer/sizer.dart';

class KeyPair extends StatelessWidget {
  final String title;
  final String value;
  const KeyPair({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BodyText(title, color: AppColors.secondaryText, textAlign: TextAlign.end,),
          //Gap(width: 4.w,),
          BodyText(value, textAlign: TextAlign.start),
        ],
      ),
    );
  }
}
