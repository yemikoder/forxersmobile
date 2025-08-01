
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String? title;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final Function(T?) onChanged;
  final String? hint;
  final String? Function(T?)? validator;
  final bool isExpanded;
  final EdgeInsetsGeometry? padding;

  const CustomDropdown({
    Key? key,
    this.title,
    required this.value,
    required this.items,
    required this.onChanged,
    this.hint,
    this.validator,
    this.isExpanded = false,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final hasTitle = title!.isNotEmpty;

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 8.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          if (hasTitle)
            Text(
              title!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 16,
                color: AppColors.primaryText,
                fontWeight: FontWeight.w400,
              ),
            ),
          if (hasTitle) SizedBox(height: 12.sp),

          DropdownButtonFormField<T>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.disabled, // or any color you want
                  width: 0.7,         // <- thinner border (default is usually 2.0)
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.disabled,
                  width: 0.7,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.primary,
                  width: 0.7,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            ),
            value: value,
            items: items,
            onChanged: onChanged,
            validator: validator,
            isExpanded: isExpanded,
            hint: hint != null ? Text(hint!) : null,
          ),
        ],
      ),
    );
  }
}
