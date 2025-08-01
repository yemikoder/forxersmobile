
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/buttons/primary_button.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/app_bar_scaffold.dart';
import 'package:forxersmobile/components/textfields/primary_text_field.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/signals/widgets/action_tile.dart';
import 'package:forxersmobile/signals/widgets/action_tile2.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:sizer/sizer.dart';

import '../config/brandstyle_config.dart';

class GroupPermissionScreen extends StatefulWidget {
  const GroupPermissionScreen({super.key});

  final value = true;

  @override
  State<GroupPermissionScreen> createState() => _GroupPermissionScreenState();
}

class _GroupPermissionScreenState extends State<GroupPermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      showBack: true,
      titleText: "Group permissions",
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Gap(height: 2.h,),

          BodyText("Members can;", fontSize: 16,),

          Gap(height: 2.h,),

          Container(
            padding: const EdgeInsets.all(24),
            decoration: ShapeDecoration(
              color: const Color(0x99171717),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Column(
              children: [

                ActionTile2(title: "Edit group settings", image: "assets/images/InfoCircle.png", onTap: () {  },
                  widget: Switch.adaptive(
                    value: widget.value,
                    activeColor: Colors.grey.shade200,
                    trackColor: !widget.value ? MaterialStateProperty.all<Color>(Color(0xFFD5ECFF)) : MaterialStateProperty.all<Color>(Color(0xFFEFF0F2)),
                    thumbColor: !widget.value ? MaterialStateProperty.all<Color>(BrandStyleConfig.primary) : MaterialStateProperty.all<Color>(BrandStyleConfig.darkPrimary),
                    onChanged: (value) {

                      // update
                      setState(() {
                        value = !widget.value;
                      });
                    },
                  ),),

                ActionTile2(title: "Edit group settings", image: "assets/images/InfoCircle.png", onTap: () {  },
                  widget: Switch.adaptive(
                    value: widget.value,
                    activeColor: Colors.grey.shade200,
                    trackColor: !widget.value ? MaterialStateProperty.all<Color>(Color(0xFFD5ECFF)) : MaterialStateProperty.all<Color>(Color(0xFFEFF0F2)),
                    thumbColor: !widget.value ? MaterialStateProperty.all<Color>(BrandStyleConfig.primary) : MaterialStateProperty.all<Color>(BrandStyleConfig.darkPrimary),
                    onChanged: (value) {

                      // update
                      setState(() {
                        value = !widget.value;
                      });
                    },
                  ),),

                ActionTile2(title: "Send message", image: "assets/images/InfoCircle.png", onTap: () {  },
                  widget: Switch.adaptive(
                    value: widget.value,
                    activeColor: Colors.grey.shade200,
                    trackColor: !widget.value ? MaterialStateProperty.all<Color>(Color(0xFFD5ECFF)) : MaterialStateProperty.all<Color>(Color(0xFFEFF0F2)),
                    thumbColor: !widget.value ? MaterialStateProperty.all<Color>(BrandStyleConfig.primary) : MaterialStateProperty.all<Color>(BrandStyleConfig.darkPrimary),
                    onChanged: (value) {

                      // update
                      setState(() {
                        value = !widget.value;
                      });
                    },
                  ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
