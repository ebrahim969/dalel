import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';


class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({super.key, required this.textFieldName, this.onChange, this.onFieldSubmitted});
  final String textFieldName;
  final void Function(String)? onChange;
  final void Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
      child: TextFormField(
        onChanged: onChange,
        onFieldSubmitted: onFieldSubmitted,
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
