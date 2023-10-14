import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import 'custom_smooth_indecator.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(Assets.imagesOnBoarding1),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndecator(
                  controller: _controller,
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Explore the history with Dalel in a smart way",
                  style: CustomTextStyles.poppins500Style24,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Explore the history with Dalel in a smart way",
                  style: CustomTextStyles.poppins300Style16,
                  textAlign: TextAlign.center,
                ),
                
              ],
            );
          }),
    );
  }
}
