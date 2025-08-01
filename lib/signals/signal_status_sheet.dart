
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../components/gap.dart';
import '../components/textfields/keypair.dart';
import '../constants/colors.dart';
import '../texts/appText.dart';

class SignalStatusSheet extends StatelessWidget {
  SignalStatusSheet({super.key});

  List items = [
    {
      "icon": "assets/pngs/postedicon.png",
      "time": "2:00 PM",
      "description": "Signal Posted"
    },
    {
      "icon": "assets/pngs/hiticon.png",
      "time": "2:00 PM",
      "description": "TP 1 Hit"
    },
    {
      "icon": "assets/pngs/hiticon.png",
      "time": "2:00 PM",
      "description": "TP 1 Hit"
    },
    {
      "icon": "assets/pngs/slicon.png",
      "time": "2:00 PM",
      "description": "SL Hit"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Gap(height: 4.h,),

    Expanded(
      child: ListView.builder(
      itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(items[index]['icon'], height: 40,),
            title: BodyText(items[index]['time'], color: AppColors.secondaryText,),
            subtitle: BodyText(items[index]['description'], fontSize: 18,),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on ${items[index]}')),
              );
            },
          );
        },
      ),
    ),
      ],
    );
  }
}
