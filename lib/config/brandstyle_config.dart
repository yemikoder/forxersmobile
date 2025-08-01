
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BrandStyleConfig {
  //COLORS
  static Color lightPrimary = const Color(0xff044188).withOpacity(0.45);
  static Color light = const Color(0xffffffff);
  static const Color primary = Color(0xff14B8A6);
  static const Color darkPrimary = Color(0xff616468); //Color(0xff2F2E41);
  static const Color lighterPrimary = const Color(0xFFE6F3FF);
  static const Color offPrimary = Color(0xff08B29B);
  static const Color accentColor = Color(0xfffbbf24);
  static const Color primaryAccentColor = Color(0xff38725B);
  static const Color secondaryAccentColor = Color(0xff8a8a8a);
  static const Color tertiary = Color(0xff2F2E41);
  static const Color secondTertiary = Color(0xffD10000);
  static const Color secondary = Color(0xff5C5C5C);
  static const Color deepPrimary = Color(0xff000000);
  static const Color offSecondary = Color(0xff797979);
  static const Color onTertiaryContainer =Color(0xffeaf1f6);
  static const Color primaryContainerColor = Color(0xffF1F1F1);
  static const Color onPrimaryContainer = Color(0xff818181);
  static Color greyShade = Colors.grey.shade100;

  //COLOR SCHEME
  static ColorScheme colorScheme = const ColorScheme.light(
    primary: Color(0xffffffff),
    secondary: Color(0xff044188),
    surface: Color(0xffffffff),
    onPrimary: Color(0xff616468),
    onSecondary: Color(0xffffffff),
    //surfaceTint: Color(0xff797979),
    //surfaceVariant: Color(0xffC57E37),
    onSurface: Color(0xff8a8a8a),
    // onSurfaceVariant: Color(0xff08B29B),
    // onPrimaryContainer: Color(0xff8a8a8a),
    // inversePrimary: Color(0xff000000),
    // onTertiary: Color(0xff2F2E41),
    //primaryContainer: Color(0xff616468),
    // tertiaryContainer: Color(0xffecf0f2),
    background: Color(0xffffffff),
    //onBackground: Color(0xfff0f0f0),
    //onTertiaryContainer: Color(0xffeaf1f6),
    //secondaryContainer: Color(0xfff5eaf3),
  );

  static const ColorScheme darkColorScheme = ColorScheme.dark(
    /*primary: Colors.black,
    surface: Colors.white,
    secondary: Color(0xffb9b9b9),
    tertiary: Color(0xff383838),
    surfaceTint: Color(0xff2a292a),
    primaryContainer: Color(0xff2a292a),
    onPrimaryContainer: Color(0xffd5d5d5),
    onSurface: Color(0xff2a292a),
    tertiaryContainer: Color(0xff0d2a40),
    background: Color(0xff520c3b),
    surfaceVariant: Color(0xff393939),
    inversePrimary: Color(0xffa3a3a3),
    onBackground: Color(0xff2f2f2f),
    onTertiary: Color(0xffffffff),
    onSurfaceVariant: Color(0xff979797),
    onTertiaryContainer: Color(0xff0b3d57),
    secondaryContainer: Color(0xff590d48),*/
  );

  //Elevated Text Theme
  static final TextTheme textTheme = TextTheme(
    //HEADLINE
    displayLarge: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
      //color: BrandStyleConfig.darkPrimary,
    ),
    displayMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: BrandStyleConfig.primary),
    displaySmall: TextStyle(fontSize: 36.sp),
    headlineLarge: TextStyle(fontSize: 18.sp),
    headlineMedium: TextStyle(fontSize: 28.sp),
    headlineSmall: TextStyle(
      color: Color(0xFF616468),
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      height: 1.38,
      letterSpacing: -0.32,
    ),

    //BODY
    bodyLarge: TextStyle(fontSize: 18.sp),
    bodyMedium: TextStyle(fontSize: 16.sp),
    bodySmall: TextStyle(
      color: Color(0xFF616468),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.50,
      letterSpacing: -0.20,
    ),


    //LABEL
    labelLarge: TextStyle(fontSize: 15.sp),
    labelMedium: TextStyle(fontSize: 12.sp),
    labelSmall: TextStyle(fontSize: 11.sp),

    //TITLE
    titleLarge: TextStyle(fontSize: 22.sp),
    titleMedium: TextStyle(fontSize: 16.sp),
    titleSmall: TextStyle(fontSize: 14.sp),

    //custom size
  );

  //Elevated Button Theme
  /*static final ElevatedButtonThemeData elevatedButtonThemeData =
  ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll<double>(1),
        textStyle: MaterialStatePropertyAll<TextStyle>(
            textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500)),
        minimumSize: const MaterialStatePropertyAll<Size>(Size(100, 45)),
        backgroundColor: const MaterialStatePropertyAll<Color>(primary),
      ));*/

  //CheckBox Theme
  static const CheckboxThemeData checkboxThemeData =
  CheckboxThemeData(fillColor: MaterialStatePropertyAll<Color>(primary));

  //RadioButton Theme
  static const RadioThemeData radioThemeData =
  RadioThemeData(fillColor: MaterialStatePropertyAll<Color>(primary));

  //InputDecoration Theme
  static final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.black12)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: offPrimary)),
  );
}
