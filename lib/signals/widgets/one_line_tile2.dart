import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../texts/appText.dart';

class OneLineTile2 extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isAdmin;

  const OneLineTile2({super.key, required this.title, required this.onTap, required this.isAdmin});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.asset("assets/pngs/forxersprofilepic.png", height: 35,),
        title: BodyText(title, fontSize: 16,),
        trailing: SizedBox(
          width: 30.w,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(isAdmin) Image.asset("assets/pngs/ShieldUser.png", height: 25,),
              Gap(width: 1.w,),
              Icon(Icons.arrow_forward_ios_rounded, color: AppColors.disabled, size: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
