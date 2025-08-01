import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/app_bar_scaffold.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../components/buttons/primary_button.dart';
import '../components/textfields/pin_field.dart';
import '../containers/icon_container.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      titleText: '',
      showBackText: true,
      showFlash: true,
      child: Form(
        key: formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Gap(height: 3.h,),

              IconContainer(child: Image.asset("assets/pngs/ShieldCheck.png", height: 4.h,)),

              SizedBox(height: 3.h,),

              TitleText("OTP Verification"),


              Gap(height: 1.h,),


              CaptionText("Enter email address you added to Selar\nwhen checking out", fontSize: 16.sp,),

              Gap(height: 3.h,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: PinField(
                  length: 6,
                  controller: otpController,
                  validator: (s) {
                    return s?.length == 6 ? null : 'Enter OTP to continue';
                  },),
              ),

              Gap(height: 8.h,),

              PrimaryButton(
                  title: 'Proceed',
                  onPressed: () {
                    Get.toNamed('/activatePinScreen');
                  }
              ),
                    ],
                  ),

              ),


    );
  }
}
