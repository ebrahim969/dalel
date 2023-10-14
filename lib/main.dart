import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/utils/app_colors.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backGroundColor),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}