
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/buttons/primary_button.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/app_bar_scaffold.dart';
import 'package:forxersmobile/components/textfields/primary_text_field.dart';
import 'package:forxersmobile/components/textfields/titlesub.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class ConfirmDetailsScreen extends StatelessWidget {
  const ConfirmDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      titleText: "",
      showBackText: true,
      showFlash: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          SizedBox(height: 3.h,),

          Image.asset('assets/images/InfoCircle.png', height: 5.h,),

          Gap(height: 3.h,),

          TitleText("Confirm details"),

          Gap(height: 3.h,),

          Container(
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            decoration: ShapeDecoration(
              color: AppColors.foreground,
              shape: RoundedRectangleBorder(
                // side: BorderSide(
                //   width: 2,
                //   color: AppColors.primary /* color-Theming-Brand-Main */,
                // ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleSub(title: 'Timothy Exodus', subtitle: "Your name"),
                Gap(height: 3.h,),
                TitleSub(title: 'Productive_Vee', subtitle: "Referral"),
                Gap(height: 3.h,),
                TitleSub(title: 'The Elite Forex Execution Academy', subtitle: "Subscription plan"),
              ],
            ),
          ),

          Gap(height: 3.h,),

          PrimaryButton(onPressed: () {
            Get.toNamed('/otpVerificationScreen');
          }, title: "Proceed"),

        ],
      ),);
  }
}
