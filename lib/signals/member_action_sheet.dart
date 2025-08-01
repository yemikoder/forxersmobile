
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/signals/widgets/action_tile.dart';
import 'package:forxersmobile/signals/widgets/icon_text.dart';
import 'package:forxersmobile/signals/widgets/one_line_tile.dart';
import 'package:forxersmobile/signals/widgets/one_line_tile2.dart';
import 'package:sizer/sizer.dart';

class MemberActionSheet extends StatelessWidget {
  const MemberActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

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
              ActionTile(title: "Info", image: "assets/images/InfoCircle.png", onTap: () {  },),

              ActionTile(title: "Make group admin", image: "assets/pngs/ShieldUser.png", onTap: () {  },),
            ],
          ),
        ),

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
              ActionTile(title: "Suspend users", image: "assets/pngs/DangerTriangle.png", onTap: () {  },),

              ActionTile(title: "Remove from group", image: "assets/pngs/CloseCircle.png", onTap: () {  },),
            ],
          ),
        )
      ],
    );
  }
}
