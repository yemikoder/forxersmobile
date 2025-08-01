import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:sizer/sizer.dart';
import '../../config/brandstyle_config.dart';

class DigitBoard2 extends StatelessWidget {
  final void Function(String)? onChange;

  const DigitBoard2({Key? key, this.onChange}) : super(key: key);

  static const List<String> _operands = ['1','2','3','4','5','6','7','8','9',' ','0','<<'];

  @override
  Widget build(BuildContext context) {
    final colorScheme = BrandStyleConfig.colorScheme;
    final theme = Theme.of(context).textTheme;
    final circleRadius = 25.sp;
    final textSize = 5.w;

    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 40),
        constraints: BoxConstraints(maxWidth: 80.w),
        width: double.infinity,
        child: Wrap(
          runSpacing: 10,
          spacing: 30,
          alignment: WrapAlignment.center,
          children: _operands.map((operand) {
            final isEmpty = operand.trim().isEmpty;

            return Semantics(
              button: true,
              label: isEmpty
                  ? 'Empty'
                  : operand == '<<'
                  ? 'Backspace'
                  : 'Number $operand',
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: isEmpty
                    ? null
                    : () {
                  HapticFeedback.lightImpact();
                  onChange?.call(operand);
                },
                splashColor: BrandStyleConfig.primary.withOpacity(0.3),
                child: CircleAvatar(
                  radius: circleRadius,
                  backgroundColor: isEmpty
                      ? Colors.transparent
                      : AppColors.foreground.withOpacity(0.8),
                  child: Center(
                    child: operand == '<'
                        ? Icon(Icons.arrow_back, color: BrandStyleConfig.primary)
                        : Text(
                      operand,
                      style: theme.labelLarge?.copyWith(
                        fontSize: textSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
