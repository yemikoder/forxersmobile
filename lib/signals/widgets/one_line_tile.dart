import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../texts/appText.dart';

class OneLineTile extends StatelessWidget {
  final String image;
  final String title;
  final void Function()? onTap;

  const OneLineTile({super.key, required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(image, height: 28, color: AppColors.primary,),
        title: BodyText(title, fontSize: 16,),
        trailing: Icon(Icons.arrow_forward_ios_rounded, color: AppColors.disabled, size: 20,),
      ),
    );
  }
}
