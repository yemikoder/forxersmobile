
import 'package:flutter/material.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:pinput/pinput.dart';

import '../../config/brandstyle_config.dart';

class PinField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscure;
  final int length;
  PinField({super.key, required this.controller, this.length = 4, this.obscure = false, this.validator  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      controller: controller,
      length: length,
      autofocus: true,
      obscureText: obscure,
      validator: validator,
      defaultPinTheme: focusedPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => debugPrint(pin),
    );
  }

  final defaultPinTheme = PinTheme(
    width: 46,
    height: 52,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(50),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 46,
    height: 52,
    textStyle: TextStyle(fontSize: 20, color: AppColors.white, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.stroke2),
      borderRadius: BorderRadius.circular(50),
    ),
  ).copyDecorationWith(
    border: Border.all(color: AppColors.stroke2),
    borderRadius: BorderRadius.circular(12),
  );

  final submittedPinTheme = PinTheme(
    width: 46,
    height: 52,
    textStyle: TextStyle(fontSize: 20, color: AppColors.white, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.stroke2),
      borderRadius: BorderRadius.circular(50),
    ),
  ).copyDecorationWith(
    border: Border.all(color: AppColors.stroke2),
    borderRadius: BorderRadius.circular(12),
  );
}
