
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/buttons/primary_button.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/app_bar_scaffold.dart';
import 'package:forxersmobile/components/textfields/primary_text_field.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class ExistingMemberScreen extends StatelessWidget {
  const ExistingMemberScreen({super.key});

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

            Image.asset('assets/pngs/Letter.png', height: 5.h,),

            Gap(height: 3.h,),

            TitleText("Enter email address"),

            Gap(height: 3.h,),

            PrimaryTextField(hintText: "e.g johndoe@gmail.com", title: 'Email'),

            Gap(height: 5.h,),

            PrimaryButton(onPressed: () {

              Get.toNamed('/confirmDetailsScreen');

            }, title: "Proceed"),

            Gap(height: 6.h,),

            Row(
              children: [
                Icon(Icons.info_outline_rounded, color: AppColors.secondaryText, size: 3.5.h, ),

                Gap(width: 5.w,),

                CaptionText("Enter email address you added to selar\nwhen checking out", fontSize: 17.sp, color: AppColors.secondaryText,)
              ],
            )
          ],
        ),);
  }
}
