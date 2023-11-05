import 'package:dalel_app/core/database/caches/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/utils/app_colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CachHelper>().init();
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