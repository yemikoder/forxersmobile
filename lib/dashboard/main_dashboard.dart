import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/dashboard/widget/dash_container.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../config/brandstyle_config.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {

    List sections =  [
      {
        "name": "Signal",
        "subtitle": "",
        "image": "assets/images/signal.png",
      },
      {
        "name": "Chats & Results",
        "subtitle": "",
        "image": "assets/images/chats.png",
      },
      {
        "name": "Announcement",
        "subtitle": "",
        "image": "assets/images/announcement.png",
      },
      {
        "name": "Testimonials",
        "subtitle": "",
        "image": "assets/images/testimonials.png",
      },
      {
        "name": "Coach Didi",
        "subtitle": "Mentor",
        "image": "assets/images/didi.png",
      },
      {
        "name": "My Buddy",
        "subtitle": "Trade Assistant",
        "image": "assets/images/buddy.png",
      },
    ];
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: AppColors.black,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/assetAccountScreen');
                            },
                            child: Container(
                              width: 10.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: BrandStyleConfig.greyShade,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/pngs/profilePics.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 2.w,),

                          Expanded(
                            child: SizedBox(
                              height: 5.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      TitleText("Morning, ", fontSize: 18.sp,),
                                      CaptionText("Timothy!", fontSize: 18.sp,),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            //Get.toNamed('/supportScreen');
                                          },
                                          child: Image.asset("assets/pngs/Bell.png", height: 3.5.h,)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Gap(height: 3.h,),

                  Row(
                    children: [
                      Expanded(child: DashContainer(title: sections[0]['name'], image: sections[0]['image'], subtitle: "", onTap: () { Get.toNamed('/signalHowScreen');  },)),
                      Gap(width: 2.w,),
                      Expanded(child: DashContainer(title: sections[1]['name'], image: sections[1]['image'], subtitle: "", onTap: () {  },)),
                    ],
                  ),

                  Gap(height: 1.h,),

                  Row(
                    children: [
                      Expanded(
                          child: DashContainer(
                        title: sections[2]['name'],
                            image: sections[2]['image'],
                            subtitle: "",
                            onTap: () {  },)),

                      Gap(width: 2.w,),
                      Expanded(child: DashContainer(title: sections[3]['name'], image: sections[3]['image'], subtitle: "", onTap: () {  },)),
                    ],
                  ),

                  Gap(height: 1.h,),

                  Row(
                    children: [
                      Expanded(child: DashContainer(title: sections[4]['name'], image: sections[4]['image'], subtitle: sections[4]['subtitle'], onTap: () {  },)),
                      Gap(width: 2.w,),
                      Expanded(child: DashContainer(title: sections[5]['name'], image: sections[5]['image'], subtitle: sections[5]['subtitle'], onTap: () {  },)),
                    ],
                  ),

                  Gap(height: 3.h,),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: AppColors.foreground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEAB308) /* color-yellow-500 */,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: CaptionText("Today's tip", color: AppColors.black,),
                        ),
                        
                        Gap(height: 1.h,),
                        
                        CaptionText("\"Avoid trading with emotions, you\nmust stay true to your analysis\"", fontSize: 18.sp, color: AppColors.neutral,),
                      ],
                    ),
                  )

                ],
              ),
            ),
          )),
    );
  }
}
