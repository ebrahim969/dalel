import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';


class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.textFieldName});
  final String textFieldName;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
      child: TextField(
        decoration: InputDecoration(
          labelText: textFieldName,
          labelStyle: CustomTextStyles.poppins500Style24.copyWith(fontSize: 16, color: AppColors.gray),
          border: getOutBoreder(),
          enabledBorder: getOutBoreder(),
          focusedBorder: getOutBoreder()
        ),
      ),
    );
  }
}

OutlineInputBorder getOutBoreder()
{
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: const BorderSide(color: AppColors.gray)
  );
}
