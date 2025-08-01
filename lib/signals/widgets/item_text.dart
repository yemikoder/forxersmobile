
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:sizer/sizer.dart';

class ItemText extends StatelessWidget {
  final String title;
  final String subtitle;
  const ItemText({super.key, required this.title, required this.subtitle,});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Icon(Icons.circle, color: AppColors.white, size: 8,),

        Gap(width: 3.w,),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFFAFAFA) /* Primary-Text */,
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.40,
                  letterSpacing: -0.40,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Opacity(
                  opacity: 0.70,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      color: const Color(0xFFA3A3A3) /* Secondary-Text */,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.43,
                    ),
                  ),
                ),
              ),

              Gap(height: 1.h,),
            ],
          ),
        ),
      ],
    );
  }
}
