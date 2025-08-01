import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/MainScaffold.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/containers/member_containers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class MemberCategoryScreen extends StatelessWidget {
  const MemberCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      child: Column(
        children: [

          Gap(height: 5.h,),

              Center(child: Image.asset('assets/pngs/usericon.png.png', height: 17.h,)),

         //Gap(height: 1.h,),

          Image.asset('assets/images/membertext.png', height: 7.h,),

          Gap(height: 6.h,),

          // Container(
          //   height: 20.h,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //
          //     color: AppColors.foreground
          //   ),
          //   child: Column(
          //     children: [
          //
          //     ],
          //   ),
          // )

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                MemberContainers(title: "I’m a new member", subtitle: "I newly made payment", onTap: () {  }, splash: "assets/images/Polygon1.png", color: AppColors.primary,),

                Gap(height: 1.h,),

                MemberContainers(title: "I’m an existing member", subtitle: "I’m an active member of Forxers", onTap: () {
                  Get.toNamed('/existingMemberScreen');
                }, splash: "assets/images/Polygon2.png", color: AppColors.secondary,),

                Gap(height: 1.h,),

                MemberContainers(title: "I’m not a member", subtitle: "I am ready to make payment", onTap: () {  }, splash: "assets/images/Polygon3.png", color: AppColors.white,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
