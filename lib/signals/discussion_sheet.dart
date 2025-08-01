import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/signals/widgets/icon_text.dart';
import 'package:forxersmobile/signals/widgets/one_line_tile.dart';
import 'package:forxersmobile/signals/widgets/one_line_tile2.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../components/bottomsheets/secondary_bottom_sheet.dart';
import '../constants/colors.dart';
import 'member_action_sheet.dart';

class DiscussionSheet extends StatelessWidget {
  DiscussionSheet({super.key});

  List membersData = [
    {
      "name": "Didi",
      "admin": true,
    },
    {
      "name": "Productivee",
      "admin": true,
    },
    {
      "name": "Yemi",
      "admin": false,
    },
    {
      "name": "Timothy",
      "admin": false,
    },
    {
      "name": "Vincent",
      "admin": false,
    },
    {
      "name": "Adanna",
      "admin": false,
    },
    {
      "name": "Adanna",
      "admin": false,
    },
    {
      "name": "Adanna",
      "admin": false,
    },
    {
      "name": "Adanna",
      "admin": false,
    },
    {
      "name": "Adanna",
      "admin": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Gap(height: 3.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconText(title: "Search", image: "assets/images/searchicon.png", onTap: () {  },),
            Gap(width: 6.w,),
            IconText(title: "Edit", image: "assets/images/editicon.png", onTap: () {
              Get.toNamed("editGroupScreen");
            },),
            Gap(width: 6.w,),
            IconText(title: "Info", image: "assets/images/infoicon.png", onTap: () { },),
          ],
        ),

        Gap(height: 3.h,),

        OneLineTile(title: "Group permissions", image: "assets/pngs/Settings.png", onTap: () {
          Get.toNamed("/groupPermissionScreen");
        },),

        OneLineTile(title: "Notifications", image: "assets/pngs/Bell.png", onTap: () {  },),

        Gap(height: 3.h,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyText("22 Members", fontSize: 16, letterSpacing: -0.40,),
            Image.asset("assets/pngs/Magnifer.png", height: 25,)
          ],
        ),

        Gap(height: 2.h,),

        Expanded(
          child: ListView.builder(
            itemCount: membersData.length, // Total number of items
            itemBuilder: (BuildContext context, int index) {
              final item = membersData[index]; // Get the item at index
              return OneLineTile2(
                onTap: () {
                  Get.back();
                  showModalBottomSheet(
                    backgroundColor: AppColors.foreground,
                    isScrollControlled: true,
                    isDismissible: false,
                    barrierColor: AppColors.foreground.withOpacity(0.5),
                    context: context,
                    builder: (ctx) {
                      return SizedBox(
                        height: 60.h,
                        child: SecondaryBottomSheet(
                            height: 60.h,
                            titleWidget: Row(
                              children: [
                                Image.asset("assets/images/userprofileimage.png", height: 45,),
                                Gap(width: 4.w,),
                                TitleText("Adanna", fontSize: 18, letterSpacing: -0.40,),
                              ],
                            ),
                            child: MemberActionSheet()
                        ),
                      );});
                },
                title: item['name'],
                isAdmin: item['admin'],);
            },
          ),
        )

      ],
    );
  }
}
