
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/app_colors.dart';
import '../features/splash/presentation/views/splash_view.dart';

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