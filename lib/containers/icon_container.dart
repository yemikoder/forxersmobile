import 'package:flutter/material.dart';


class IconContainer extends StatelessWidget {
  Widget child;
  IconContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
