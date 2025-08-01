import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../texts/appText.dart';

class ActionTile2 extends StatelessWidget {
  final String image;
  final String title;
  final Widget widget;
  final void Function()? onTap;

  const ActionTile2({super.key, required this.title, required this.image, required this.onTap, required this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: BodyText(title, fontSize: 16,),
        trailing: widget
      ),
    );
  }
}
