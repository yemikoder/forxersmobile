

import 'package:flutter/material.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../components/buttons/primary_button.dart';
import '../components/gap.dart';
import '../components/scaffolds/app_bar_scaffold.dart';
import '../config/brandstyle_config.dart';

class ActivatePinScreen extends StatelessWidget {
  ActivatePinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      showBack: true,
      showBackText: true,
      showAppBar: true,
      titleText: "",
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          //SizedBox(height: 1.h,),

          Center(child: Image.asset("assets/images/biometric.png", height: 35.h,)),

          Gap(height: 8.h,),

          Center(
            child: TitleText("Activate PIN",
              textAlign: TextAlign.center,
              fontSize: 28.sp,
            ),),

          Gap(height: 2.h,),

          Center(
            child: CaptionText("For easy and more secured login\nactivate biometrics",
              textAlign: TextAlign.center,
              fontSize: 16.sp,
            ),
          ),

          Gap(height: 12.h,),

          PrimaryButton(onPressed: () async {
              Get.offAllNamed('/createPinScreen');
          },
              title: "Activate"),

          Gap(height: 2.h,),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              CaptionText("I'll do this later, ", fontSize: 16.sp,),

              GestureDetector(
                onTap: () async {

                },
                child: Center(
                  child: Text("Skip", style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColors.primary,
                    decorationColor: AppColors.primary,
                    fontSize: 18.sp,
                  ),),
                ),
              ),
            ],
          ),

        ],
      ),);
  }
}
