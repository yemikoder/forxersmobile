import 'package:flutter/material.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SecondaryBottomSheet extends StatelessWidget {
  final Widget child;
  final double height;
  final bool displayClose;
  final Widget? titleWidget;

  const SecondaryBottomSheet(
      {Key? key,
        required this.child,
        required this.height,
        this.titleWidget,
        this.displayClose = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom, top: 10, left: 15, right: 15),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: AppColors.foreground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            displayClose ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  titleWidget != null ? titleWidget! : SizedBox(),

                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      customBorder: RoundedRectangleBorder( borderRadius: BorderRadius. circular(20),),
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset('assets/pngs/Closebutton.png', height: 4.h,)
                    ),),
                  ),
                ],
              ),
            ) : SizedBox(),

            //SizedBox(height: 1.h,),
            Expanded(
              child: Container(
                //padding: const EdgeInsets.symmetric(vertical: 30),
                child: child,
              ),
            )],
        ),
      ),
    );
  }
}
