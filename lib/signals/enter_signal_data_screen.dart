
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/buttons/primary_button.dart';
import 'package:forxersmobile/components/dropdowns/custom_dropdown.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/textfields/primary_text_field.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:sizer/sizer.dart';

class EnterSignalDataScreen extends StatefulWidget {
  EnterSignalDataScreen({super.key});

  @override
  State<EnterSignalDataScreen> createState() => _EnterSignalDataScreenState();
}

class _EnterSignalDataScreenState extends State<EnterSignalDataScreen> {
  final List<dynamic> tradeType = ['Buy (Market execution)', 'Sell (Market execution)', 'Buy limit', 'Sell limit'];
  final List<dynamic> pairs = ['Gold / U.S Dollar', 'EUR/USD', 'GBP/JPY', 'BTC/USD', 'USD/JPY'];
  String? selectedValue;
  String? selectedPair;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        CustomDropdown(
          title: "Trade type",
          value: selectedValue, items: tradeType.map((e) {
          return DropdownMenuItem<dynamic>(
            value: e,
            child: Text(e),
          );
        }).toList(), onChanged: (val) {
          setState(() {
            selectedValue = val;
          });
        },),

        CustomDropdown(
          title: "Pair",
          value: selectedPair, items: pairs.map((e) {
          return DropdownMenuItem<dynamic>(
            value: e,
            child: Text(e),
          );
        }).toList(), onChanged: (val) {
          setState(() {
            selectedPair = val;
          });
        },),

        Gap(height: 1.h,),

        PrimaryTextField(hintText: "e.g 0.00001-0.00002", title: "Entry", enabledBorderColor: AppColors.disabled),

        Gap(height: 2.h,),

        PrimaryTextField(hintText: "e.g 0.00001", title: "Stop loss", enabledBorderColor: AppColors.disabled,),

        Gap(height: 2.h,),

        PrimaryTextField(hintText: "e.g 0.00001", title: "TP 1", enabledBorderColor: AppColors.disabled,),

        Gap(height: 2.h,),

        GestureDetector(
          onTap: () {

          },
          child: Row(
            children: [
              Icon(Icons.add, color: AppColors.primary, size: 20,),
              BodyText("Add TP", color: AppColors.primary, fontSize: 17,),
            ],
          ),
        ),

        SizedBox(height: 4.h,),

        PrimaryButton(onPressed: () {}, title: "Send")
      ],
    );
  }
}
