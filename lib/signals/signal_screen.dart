import 'package:flutter/material.dart';
import 'package:forxersmobile/components/buttons/primary_button.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/app_bar_scaffold.dart';
import 'package:forxersmobile/components/textfields/keypair.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/signals/controller/signal_controller.dart';
import 'package:forxersmobile/signals/enter_trade_info_screen.dart';
import 'package:forxersmobile/signals/signal_status_sheet.dart';
import 'package:forxersmobile/signals/trade_info_sheet.dart';
import 'package:forxersmobile/signals/widgets/one_line_tile2.dart';
import 'package:forxersmobile/signals/widgets/signal_item.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../components/bottomsheets/secondary_bottom_sheet.dart';
import '../components/textfields/primary_text_field.dart';
import '../config/brandstyle_config.dart';
import 'discussion_sheet.dart';
import 'enter_signal_data_screen.dart';

class SignalScreen extends StatelessWidget {
  SignalScreen({super.key});

  final _signalController = Get.put(SignalController());

  final List signalData = [
    {
      "title": "Entry",
      "value": "0.0234"
    },
    {
      "title": "SL",
      "value": "0.0234"
    },
    {
      "title": "TP",
      "value": "0.0234"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leadingWidth: 200,
        //bottom: bottom,
        backgroundColor: Color(0xCC0A0A0A),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: InkWell(
            borderRadius: BorderRadius.circular(90),
            onTap: () {
              FocusScope.of(context).unfocus();
              Get.back();
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 2.5.h,
                  color: BrandStyleConfig.darkPrimary,
                ),
                 GestureDetector(
                   onTap: () {
                     showModalBottomSheet(
                         backgroundColor: AppColors.foreground,
                         isScrollControlled: true,
                         isDismissible: false,
                         barrierColor: AppColors.foreground.withOpacity(0.5),
                         context: context,
                         builder: (ctx) {
                           return SecondaryBottomSheet(
                               height: 90.h,
                               titleWidget: TitleText("Discussion", fontSize: 18, letterSpacing: -0.40,),
                               child: DiscussionSheet()
                           );});
                   },
                   child: Row(
                     children: [
                       Image.asset("assets/images/signal.png", height: 4.h,),
                       Gap(width: 2.w,),
                       TitleText(
                         "Signals", letterSpacing: -0.40, fontSize: 18,
                       ),
                       Gap(width: 2.w,),
                       Icon(Icons.arrow_forward_ios_rounded, color: AppColors.secondaryText, size: 13,)
                     ],
                   ),
                 )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.info_outline_rounded, color: AppColors.secondaryText,),
          )
        ],
    
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _signalController.signalStage.value = 0;
          showNewSignal();
        },
        backgroundColor: AppColors.primary,
        shape: CircleBorder(),
        child: Icon(Icons.add), // Optional, for custom circular appearance
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // or centerFloat
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [

              Gap(height: 3.h,),

              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: signalData.length,
                    itemBuilder: (context, index) {
                      final item = signalData[index];
                      return GestureDetector(
                        onTap: () {
                          showSignalOption();
                        },
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.all(24),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF111111) /* Forground */,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFDC2626),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(99),
                                      ),
                                    ),
                                    child: Center(child: BodyText("Sell", color: Colors.white,)),
                                  ),

                                  SubtitleText("2 hours ago", fontSize: 14,)
                                ],
                              ),

                              Gap(height: 2.h,),

                              TitleText("XAUUSD", color: AppColors.primary,),

                              Gap(height: 0.5.h,),

                              SubtitleText("Gold / U.S. Dollar"),

                              Gap(height: 1.h,),

                              Container(
                                height: 13.h,
                                child: ListView.builder(
                                  itemCount: signalData.length,
                                  itemBuilder: (context, index) {
                                    final item = signalData[index];
                                    return SignalItem(title: item['title'], value: item['value']);
                                  },
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: AppColors.foreground,
                                      isScrollControlled: true,
                                      isDismissible: false,
                                      barrierColor: AppColors.foreground.withOpacity(0.5),
                                      context: context,
                                      builder: (ctx) {
                                        return SecondaryBottomSheet(
                                            height: 80.h,
                                            titleWidget: TitleText("Trade info", fontSize: 18, letterSpacing: -0.40,),
                                            child: DefaultTabController(
                                              length: 2,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  TabBar(
                                                    indicatorSize: TabBarIndicatorSize.tab,
                                                    labelColor: AppColors.primaryText,
                                                    unselectedLabelColor: AppColors.secondaryText,
                                                    dividerColor: Colors.transparent,
                                                    labelStyle: TextStyle(
                                                      color: Color(0xFF1E2022),
                                                      fontSize: 17.sp,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.57,
                                                    ),
                                                    indicator: BoxDecoration(
                                                      border: Border(
                                                        bottom: BorderSide( //                   <--- right side
                                                          color: AppColors.primary,
                                                          width: 3.0,
                                                        ),
                                                      ),
                                                      //borderRadius: BorderRadius.circular(3),
                                                    ),
                                                    tabs: [
                                                      Tab(text: 'Info'),
                                                      Tab(text: 'Status'),
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: TabBarView(
                                                      children: [
                                                        TradeInfoSheet(),
                                                        SignalStatusSheet()

                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        );});
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 47,
                                  padding: const EdgeInsets.all(10),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF262626),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.info_outline_rounded, color: AppColors.disabled, ),
                                      Gap(width: 3.w,),
                                      SubtitleText("Trade Info", letterSpacing: -0.40),
                                    ],
                                  ),
                                ),
                              ),

                              Gap(height: 1.h,),

                              Container(
                                width: double.infinity,
                                height: 47,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: Color(0x1914B8A6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SubtitleText("Enter trade", color: const Color(0xFF14B8A6), letterSpacing: -0.40,),
                                    Gap(width: 3.w,),
                                    Image.asset("assets/pngs/ArrowRightUp.png", scale: 3,)
                                  ],
                                ),
                              ),

                              Gap(height: 3.h,),

                              SubtitleText("Trade closed")


                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),


            ],
          ),
        ),);
  }

  void showNewSignal() {
    showModalBottomSheet(
        backgroundColor: AppColors.foreground,
        isScrollControlled: true,
        isDismissible: false,
        barrierColor: AppColors.foreground.withOpacity(0.5),
        context: Get.context!,
        builder: (ctx) {
          return SizedBox(
            height: 85.h,
            child: Obx( () => SecondaryBottomSheet(
                height: 85.h,
                showFlash: true,
                titleWidget: TitleText("New Signal", fontSize: 20, letterSpacing: -0.40,),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gap(height: 2.h,),

                      if(_signalController.signalStage.value == 0) EnterTradeInfoScreen(),

                      if(_signalController.signalStage.value == 1) EnterSignalDataScreen()

                    ],
                  ),
                )
            ),
          ),);});
  }

  void showSignalOption() {
    showModalBottomSheet(
        backgroundColor: AppColors.foreground,
        isScrollControlled: true,
        isDismissible: false,
        barrierColor: AppColors.foreground.withOpacity(0.5),
        context: Get.context!,
        builder: (ctx) {
          return SizedBox(
            height: 57.h,
            child: SecondaryBottomSheet(
                height: 57.h,
                showFlash: true,
                titleWidget: TitleText("Options", fontSize: 20, letterSpacing: -0.40,),
                child: Column(
                  children: [

                    SizedBox(height: 2.h,),

                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: ShapeDecoration(
                        color: AppColors.foreground2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          OneLineTile2(
                            title: "Edit",
                            onTap: () {},
                            isAdmin: false,
                            image: "assets/pngs/editicon2.png",
                            imageSize: 20,),

                          OneLineTile2(
                            title: "Update trade",
                            onTap: () {},
                            isAdmin: false,
                            image: "assets/pngs/Refresh.png",
                            imageSize: 20,),

                          OneLineTile2(
                            title: "Forward",
                            onTap: () {},
                            isAdmin: false,
                            image: "assets/pngs/Forward.png",
                            imageSize: 20,),

                          OneLineTile2(
                            title: "Delete",
                            onTap: () {},
                            isAdmin: false,
                            image: "assets/pngs/TrashBinTrash.png",
                            imageSize: 20,),

                          OneLineTile2(
                            title: "Trade closed",
                            onTap: () {},
                            isAdmin: false,
                            image: "assets/pngs/CloseCircle1.png",
                            imageSize: 20,),
                        ],
                      ),
                    ),
                  ],
                )
            ),
            );});
  }
}
