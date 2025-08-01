
import 'package:flutter/material.dart';
import 'package:forxersmobile/components/buttons/primary_button.dart';
import 'package:forxersmobile/components/gap.dart';
import 'package:forxersmobile/components/scaffolds/app_bar_scaffold.dart';
import 'package:forxersmobile/components/textfields/primary_text_field.dart';
import 'package:sizer/sizer.dart';

class EditGroupScreen extends StatelessWidget {
  const EditGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarScaffold(
      showBack: true,
      titleText: "Edit group",
        child: Column(
          children: [

            PrimaryTextField(hintText: "Chats and Results", title: "Group name"),

            Gap(height: 2.h,),

            PrimaryTextField(hintText: "Chat & Results", title: "Group description", maxLines: 10,),

            Gap(height: 8.h,),

            PrimaryButton(onPressed: () {}, title: "Save Changes")
          ],
        ),
    );
  }
}
