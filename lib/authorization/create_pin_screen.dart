
import 'package:flutter/material.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../components/buttons/primary_button.dart';
import '../components/gap.dart';
import '../components/scaffolds/app_bar_scaffold.dart';
import '../components/textfields/pin_placeholder.dart';
import '../containers/icon_container.dart';

class CreatePinScreen extends StatefulWidget {
  CreatePinScreen({super.key});

  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String pinValue = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      showBack: true,
      showAppBar: true,
      showBackText: true,
      titleText: '',
      child: WillPopScope(
        onWillPop: () async => false,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 2.h,),

              TitleText(
                "Create 4-digit PIN",
                fontSize: 24.sp,
              ),

              Gap(height: 1.h,),

              CaptionText("Enter 4-digit PIN to secure your account", fontSize: 16.sp,),

              Gap(height: 3.h,),

              PinPlaceholder(
                onPin: _verify,
                changePin: false,
              ),

              Gap(height: 10.h,),

              PrimaryButton(title: 'Set PIN', onPressed: _proceed,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _proceed() {
    //debugPrint("Pin value ===>>>> $pinValue");
    if (!formKey.currentState!.validate()) return;
    Get.offAllNamed("/homeScreen");
  }

  void _verify(String pin) async {
    setState(() {
      pinValue = pin;
    });
    print(pinValue);
  }
}
