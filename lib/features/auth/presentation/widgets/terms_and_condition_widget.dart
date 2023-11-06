import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'custom_check_box.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
         children:  [
          const CheckBoxWidget(),
          Text.rich(TextSpan(
            children: [
              const TextSpan(text: AppStrings.iHaveAgreeToOur, style: CustomTextStyles.poppins400Style12),
              TextSpan(text: AppStrings.termsAndCondition,  style: CustomTextStyles.poppins400Style12.copyWith(decoration: TextDecoration.underline)),
            ]
          ))
         ],
    );
  }
}