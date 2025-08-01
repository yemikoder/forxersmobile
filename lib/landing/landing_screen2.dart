
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LandingScreen2 extends StatelessWidget {
  final String? title;
  final String? image;
  final String? subtitle;
  const LandingScreen2({super.key, required this.title, required this.image, this.subtitle});


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(width: 2.w,),
                Image.asset('assets/images/text2.png', height: 20.h,),
                // Text(title!,
                //   textAlign: TextAlign.center,
                //   style: Theme.of(context).textTheme.displayLarge?.copyWith(
                //     fontSize: 24.sp,
                //     height: 1.25,
                //     letterSpacing: -1,
                //     fontWeight: FontWeight.w600
                //     //color: Colors.white,
                // ),),

                SizedBox(height: 1.h,),

                // Text(subtitle!,
                //   textAlign: TextAlign.center,
                //   style: Theme.of(context).textTheme.bodySmall?.copyWith(
                //     color: Color(0xFF616468),
                //     fontSize: 14,
                //     fontFamily: 'Poppins',
                //     fontWeight: FontWeight.w400,
                //     height: 1.71,
                //     letterSpacing: -0.20,
                // ),),

                //SizedBox(height: 10.h,),
              ],
            ),
          ),
        ),
        SizedBox(height: 2.h,),
        Center(child: Image.asset(image!, height: 48.h,)),
      ],
    );
  }
}
