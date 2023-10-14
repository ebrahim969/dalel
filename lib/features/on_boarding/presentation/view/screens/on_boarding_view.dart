import 'package:flutter/material.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              const CustomNavBar(),
              OnBoardingViewBody(),
              const CustomButton(text: AppStrings.next,),
              const SizedBox(height: 17,),
            ],
          ),
        ),
      ),
    );
  }
}

