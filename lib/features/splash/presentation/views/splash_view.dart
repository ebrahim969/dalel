import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../on_boarding/presentation/view/screens/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    navigateFromSplash();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.appName, style: CustomTextStyles.pacifico400Style64),
      ),
    );
  }
}

void navigateFromSplash() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(const OnBoardingView(), transition: Transition.leftToRight);
    });
  }