import 'package:dalel_app/core/database/caches/cache_helper.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/features/auth/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/services/service_locator.dart';
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
    bool isOnBoardingVisited =
        getIt<CachHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisited == true) {
      navigateFromSplash(context, const SignUpView());
    } else {
      navigateFromSplash(context, const OnBoardingView());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.appName,
            style: CustomTextStyles.pacifico400Style64),
      ),
    );
  }
}

void navigateFromSplash(BuildContext context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return path;
    }));
  });
}
