import 'package:flutter/material.dart';
import 'package:forxersmobile/components/toast/custom_toast.dart';
import 'package:sizer/sizer.dart';
import '../../components/gap.dart';
import '../../constants/colors.dart';
import '../../texts/appText.dart';

class SignalItem extends StatelessWidget {
  final String value;
  final String title;
  const SignalItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SubtitleText(title),
            Spacer(),
            Row(
              children: [
                BodyText(value),
                Gap(width: 2.w,),
                GestureDetector(
                    onTap: () {
                      CustomToast.show(context, "Copied", backgroundColor: AppColors.foreground3, position: ToastPosition.top);
                    },
                    child: Icon(Icons.copy, color: AppColors.secondaryText, size: 15,))
              ],
            ),
          ],
        ),

        Gap(height: 1.h,),
      ],
    );
  }
}
