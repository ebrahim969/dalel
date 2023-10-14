import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class CustomTextStyles
{
    static const  pacifico400Style64 = TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w400,
      color: AppColors.deepBrown,
      fontFamily: "Pacifico"
    );

    static const  poppins500Style24 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      fontFamily: "Poppins"
    );

    static const  poppins300Style16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: AppColors.black,
      fontFamily: "Poppins"
    );
}