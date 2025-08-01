import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LandingScreen extends StatelessWidget {
  final String? title;
  final String? image;
  const LandingScreen({super.key, required this.title, required this.image});


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(title!, style: Theme.of(context).textTheme.displayLarge?.copyWith(
              //     fontSize: 24.sp,
              //     //color: Colors.white,
              // ),),
              SizedBox(height: 1.h,),
              Image.asset('assets/images/text1.png', height: 20.h,),
              SizedBox(height: 1.h,),
              Center(child: Image.asset('assets/images/image1.png', height: 10.h,))
            ],
          ),
        ),
        //izedBox(height: 1.h,),
        Center(child: Image.asset(image!, height: 52.h,)),
        SizedBox(height: 5.h,),
      ],
    );
  }
}
