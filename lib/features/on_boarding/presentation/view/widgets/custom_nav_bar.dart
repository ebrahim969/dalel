import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.skip,
                  style: CustomTextStyles.poppins300Style16
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              );
  }
}