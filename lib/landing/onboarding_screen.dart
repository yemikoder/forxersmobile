
import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../components/buttons/primary_button.dart';
import '../config/brandstyle_config.dart';

import '../services/secure_storage_service.dart';
import 'landing_screen.dart';
import 'landing_screen2.dart';
import 'landing_screen3.dart';


class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with SingleTickerProviderStateMixin  {
  //final _onboardingController = Get.put(OnboardingController());

   final storageManager = SecureStorageManager();

  // final LoginController _loginController= Get.find();

   final secureStorageManager = SecureStorageManager();

   late final AnimationController _controller;
   final PageController pageController = PageController();
   Timer? _timer;

   final RxInt currentPage = 0.obs;
   //RxInt currentIndex = 0.obs;
   final int totalPages = 3; // assuming 3 pages to cycle through

   @override
   void initState() {
     super.initState();

     _controller = AnimationController(
       vsync: this,
       duration: const Duration(seconds: 5),
     )..forward();

     _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
       currentPage.value = (currentPage.value + 1) % totalPages;

       _controller.forward(from: 0); // Restart animation

       pageController.animateToPage(
         currentPage.value,
         duration: Duration(milliseconds: currentPage.value != 0 ? 700 : 30),
         curve: Curves.easeIn,
       );
     });
   }

   @override
   void dispose() {
     _controller.dispose();
     pageController.dispose();
     _timer?.cancel();
     super.dispose();
   }


   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          //image: DecorationImage(image: AssetImage('assets/icons/pngs/image 11.png',), fit: BoxFit.cover),
            //focalRadius: 10,
        ),
        child:Stack(
          children: <Widget>[

            PageView(
              controller: pageController,
              onPageChanged: (value) {
                currentPage.value = value;
                _controller.forward(from: 0);
              },
              children:  const [
                LandingScreen2(title: "All-in-one Banking", subtitle: "Savings, bills payments,\ninvestments & loans", image: "assets/images/Tools.png"),
                LandingScreen(title: "Your Finances\nWithin Reach", image: "assets/images/Maskgroup.png"),
                LandingScreen3(title: "Trust in Every Tap", subtitle: "Join thousands who trust us to simplify\ntheir financial journey.", image: "assets/images/Maskgroup2.png"),
              ],
            ),


            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 12),
                height: 29.h,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 3.h,),

                    //const Spacer(),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 25),
                            height: 7.h,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: AnimatedBuilder(
                              animation: _controller,
                              builder: (context, child) {
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                    //currentIndex.value = index;
                                      return Container(
                                        margin: index == 1 ? EdgeInsets.symmetric(horizontal: 3,) : EdgeInsets.zero,
                                        height: 2.h,
                                        width: 28.w,
                                        child: Obx(() => LinearProgressIndicator(
                                          borderRadius: BorderRadius.circular(100),
                                          minHeight: 1.h,
                                          color: Color(0xffEAEAEA),
                                          backgroundColor: Color(0xffEAEAEA),
                                          valueColor: currentPage.value == index ? AlwaysStoppedAnimation<Color>(BrandStyleConfig.accentColor) : AlwaysStoppedAnimation<Color>(Colors.transparent),
                                          value: _controller.value, // This value changes smoothly over time
                                        ),
                                      ));
                                    });
                              },
                            )
                          ),
                        ),

                        SizedBox(width: 5.w,),

                        // GestureDetector(
                        //   onTap: () => OnboardingController.instance.nextPage(),
                        //   child: Row(
                        //     children: [
                        //       Text("Next", style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        //           fontSize: 22.sp,
                        //         fontWeight: FontWeight.w500,
                        //         color: BrandStyleConfig.primary
                        //       ),),
                        //       Image.asset("assets/icons/pngs/next_arrow_icon.png", scale: 2, color: BrandStyleConfig.primary,),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),

                    //Spacer(),
                    SizedBox(height: 7.h,),
                  ],
                ),
              ),
            ),

            Positioned(
                bottom: 20,
                right: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                PrimaryButton(onPressed: () {
                  // storageManager.storeBool('hasSeenOnboarding', true);
                  // storageManager.storeString('notifications', '');
                  // secureStorageManager.setSecureData('pin', '');

                  Get.offAllNamed("/memberCategoryScreen");
                }, title: "Get Started"
                ),

                    SizedBox(height: 3.h,),



                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //   Image.asset("assets/icons/pngs/licencedbycbn.png", height: 2.h,),
                    //       SizedBox(width: 2.w,),
                    //       RichText(
                    //           text: TextSpan(
                    //               style: DefaultTextStyle.of(context).style,
                    //               children: [
                    //
                    //                 TextSpan(text:'Licensed by ',
                    //                   style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    //                     color: Color(0xFF616468),
                    //                     fontSize: 10.53,
                    //                     fontFamily: 'Poppins',
                    //                     fontWeight: FontWeight.w500,
                    //                     height: 1.37,
                    //                     letterSpacing: -0.13,
                    //                   ),),
                    //                 TextSpan(text:'Central Bank of Nigeria',
                    //                   style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    //                     color: Color(0xFF1E2022),
                    //                     fontSize: 10.53,
                    //                     fontFamily: 'Poppins',
                    //                     fontWeight: FontWeight.w600,
                    //                     height: 1.37,
                    //                     letterSpacing: -0.13,
                    //                   ),),
                    //               ])),
                    // ])
                  ],
                ),),
          ],
        ),
      ),
    );
  }
}
