
import 'package:flutter/widgets.dart';

class Gap extends StatelessWidget {
  final double? height;
  final double? width;

  const Gap({this.height, this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
