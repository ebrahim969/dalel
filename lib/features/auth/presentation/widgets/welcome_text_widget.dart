import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Text(
      AppStrings.welcome,
      style: CustomTextStyles.poppins500Style24
          .copyWith(fontSize: 28, fontWeight: FontWeight.w600),
    ));
  }
}