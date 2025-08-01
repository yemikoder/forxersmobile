
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forxersmobile/signals/controller/signal_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../components/buttons/primary_button.dart';
import '../components/gap.dart';
import '../components/textfields/primary_text_field.dart';
import 'member_action_sheet.dart';

class EnterTradeInfoScreen extends StatelessWidget {
  EnterTradeInfoScreen({super.key});

  final SignalController _signalController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Column(
          children: [

            Gap(height: 2.h,),

            PrimaryTextField(hintText: "Enter info", title: "Trade info", maxLines: 20, enabledBorderColor: Colors.grey,),

            SizedBox(height: 5.h,),

            PrimaryButton(onPressed: () {
              _signalController.signalStage.value = 1;
            }, title: "Proceed")

          ],
        ),
      ],
    );
  }
}
