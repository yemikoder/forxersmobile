import 'package:flutter/material.dart';
import 'package:forxersmobile/components/buttons/primary_button.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/app_bar_scaffold.dart';
import 'package:forxersmobile/signals/widgets/item_text.dart';
import 'package:forxersmobile/texts/appText.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class SignalHowScreen extends StatelessWidget {
  const SignalHowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      showBack: true,
      titleText: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/signal.png",
            height: 8.h,
          ),

          Gap(height: 2.h),

          const TitleText("Signals"),

          Gap(height: 1.h),

          const SubtitleText(
            "This is where FORXERS mentors drop\nreal-time trade signals",
            textAlign: TextAlign.center,
            fontSize: 16,
            maxLines: 3,
          ),

          Gap(height: 2.h),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFF111111),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText("How it works", fontSize: 18),

                Gap(height: 16), // consistent fixed spacing

                ItemText(
                  title: "Check the Signal",
                  subtitle: "Review entry, TP, and SL shared by your mentor.",
                ),
                ItemText(
                  title: "Confirm the Pair & Timeframe",
                  subtitle: "Ensure it matches your trading setup.",
                ),
                ItemText(
                  title: "Copy to Your Trading App",
                  subtitle: "Enter all values exactly as shared.",
                ),
                ItemText(
                  title: "Use Proper Risk Management",
                  subtitle: "Trade responsibly based on your capital.",
                ),
                ItemText(
                  title: "Ask if Unsure",
                  subtitle: "Use the discussion tab to clarify anything.",
                ),
                ItemText(
                  title: "Respect the Space",
                  subtitle: "Don’t share signals outside the community.",
                ),
              ],
            ),
          ),

          Gap(height: 3.h),

          PrimaryButton(onPressed: () {
            Get.toNamed('/signalScreen');
          }, title: "Proceed"),
        ],
      ),
    );
  }
}
