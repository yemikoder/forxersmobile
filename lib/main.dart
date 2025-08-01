import 'package:flutter/material.dart';
import 'package:forxersmobile/services/app_binding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

import 'landing/onboarding_screen.dart';
import 'navigation/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, screenType)
    {
      return GetMaterialApp(
        initialBinding: AppBinding(),
        debugShowCheckedModeBanner: false,
        getPages: getPages,
        title: 'FORXERS',
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black, // Set screen background to black
          primaryColor: Colors.white,
          fontFamily: 'DMSans',
          colorScheme: ColorScheme.dark(
            primary: Colors.white,
            secondary: Colors.blueAccent,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: OnboardingScreen(),
      );
    },
      );
    }
}

