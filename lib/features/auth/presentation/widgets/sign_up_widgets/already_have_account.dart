import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';



class AlradyHaveAccountWidget extends StatelessWidget {
  const AlradyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [
        const TextSpan(
            text: AppStrings.alreadyHaveAnAccount,
            style: CustomTextStyles.poppins400Style12),
        TextSpan(
            text: AppStrings.signIn,
            style: CustomTextStyles.poppins400Style12
                .copyWith(color: AppColors.lightreay)),
      ])),
    );
  }
}
