import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import '../../config/brandstyle_config.dart';
import '../../constants/colors.dart';

class PrimaryTextField extends StatelessWidget {
  final String hintText;
  final String title;
  final int? maxLength;
  final Widget? prefixIcon;
  final String? counter;
  final bool obscure;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final Function(String? v)? onChanged;
  final Function()? onEditingComplete;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool? enabled;
  final bool autofocus;
  final int? maxLines;
  final Function(String?)? onSaved;
  final bool? enableInteractiveSelection;
  final FocusNode? focusNode;
  final String? Function(String?)? validate;
  final Color? fillColor;
  final Function(String)? onFieldSubmitted;
  final Color? enabledBorderColor;

  const PrimaryTextField({
    Key? key,
    this.controller,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.onChanged,
    this.autofocus = false,
    this.onEditingComplete,
    this.onTap,
    this.maxLength,
    this.keyboardType,
    this.onSaved,
    this.validate,
    this.suffixIcon,
    required this.hintText,
    required this.title,
    this.obscure = false,
    this.enabled,
    this.maxLines = 1,
    this.counter = '',
    this.enableInteractiveSelection,
    this.focusNode,
    this.fillColor = AppColors.foreground,
    this.enabledBorderColor = Colors.transparent
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasTitle = title.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hasTitle)
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 16,
              color: AppColors.primaryText,
              fontWeight: FontWeight.w400,
            ),
          ),
        if (hasTitle) SizedBox(height: 12.sp),
        TextFormField(
          validator: validate,
          enabled: enabled,
          autofocus: autofocus,
          onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
          onSaved: onSaved,
          onFieldSubmitted: onFieldSubmitted,
          inputFormatters: inputFormatters,
          maxLength: maxLength,
          controller: controller,
          keyboardType: keyboardType,
          cursorColor: BrandStyleConfig.primary,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscure,
          style: TextStyle(
            color: AppColors.white /* Secondary-Text */,
            fontSize: 16,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
            height: 1.50,
          ),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon != null
                ? Padding(
              padding: const EdgeInsets.all(2),
              child: suffixIcon,
            )
                : null,
            counterText: counter?.isNotEmpty == true ? counter : "",
            counterStyle: TextStyle(
              letterSpacing: -0.2,
              fontSize: 16.sp,
              color: BrandStyleConfig.secondaryAccentColor,
              fontWeight: FontWeight.w300,
            ),
            filled: true,
            fillColor: fillColor,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            hintText: hintText,
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.3, color: Colors.transparent),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.3, color: BrandStyleConfig.primary),
              borderRadius: BorderRadius.circular(12),
            ),
            errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 14.sp,
              color: Colors.red,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: enabledBorderColor!),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.3, color: BrandStyleConfig.secondTertiary),
              borderRadius: BorderRadius.circular(12),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 8, color: BrandStyleConfig.secondTertiary),
              borderRadius: BorderRadius.circular(12),
            ),
            hintStyle: TextStyle(
              letterSpacing: -0.2,
              fontSize: 16.sp,
              color: BrandStyleConfig.secondaryAccentColor,
              fontWeight: FontWeight.w300,
            ),
          ),
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onTap: onTap,
          maxLines: maxLines,
          enableInteractiveSelection: enableInteractiveSelection,
          textAlignVertical: TextAlignVertical.center,
          focusNode: focusNode,
        ),
      ],
    );
  }
}
