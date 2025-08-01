import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../texts/appText.dart';

class ActionTile extends StatelessWidget {
  final String image;
  final String title;
  final void Function()? onTap;

  const ActionTile({super.key, required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: BodyText(title, fontSize: 16,),
        trailing: Image.asset(image, height: 20, color: AppColors.disabled,),
      ),
    );
  }
}
