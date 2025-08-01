
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../components/gap.dart';
import '../components/textfields/keypair.dart';
import '../constants/colors.dart';
import '../texts/appText.dart';

class TradeInfoSheet extends StatelessWidget {
  const TradeInfoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        Gap(height: 2.h,),

        BodyText("We’re using a tight stop loss here, hoping for a sniper entry. Make sure you risk wisely — never risk more than you can afford to lose. Calculate your lot size so any loss stays within your chosen risk limit. If this SL hits, accept it as part of the plan — don’t revenge trade!",
          maxLines: 10,
          color: AppColors.secondaryText,
          fontSize: 16,
        ),

        Gap(height: 2.h,),

        KeyPair(title: 'Pair', value: "XAUUSD (GOLD)"),
        KeyPair(title: 'Type', value: "Sell Limit"),
        KeyPair(title: 'Entry', value: "3374 - 3375"),
        Center(child: KeyPair(title: 'Stop loss', value: "3376.5")),
        Center(child: KeyPair(title: 'TP 1', value: "3376.5")),
        Center(child: KeyPair(title: 'TP 2', value: "3376.5")),

        Gap(height: 2.h,),

        BodyText("✅ Risk Tip (Example):  • On gold, a \$1 move = roughly \$1 profit/loss per 0.01 lot size.  • Distance from entry (3375) to SL (3376.5) = \$1.50 risk.  • On 0.01 lot, that’s about \$1.50 risk.  • Adjust lot size so this dollar risk matches your planned % risk per trade.",
          maxLines: 10,
          color: AppColors.secondaryText,
          fontSize: 16,
        ),

      ],
    );
  }
}
