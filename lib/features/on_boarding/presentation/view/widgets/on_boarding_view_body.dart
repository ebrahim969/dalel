import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../data/models/onboarding_model.dart';
import 'custom_smooth_indecator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key, required this.controller, this.onPageChanged});

  final PageController controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics:const BouncingScrollPhysics(),
          controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height:290,
                  width: 343,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        onBoardingData[index].imagePath
                        ),
                      fit: BoxFit.fill
                      ),
                  ),
                  
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndecator(
                  controller: controller,
                ),
                const SizedBox(
                  height: 32,
                ),
                 Text(
                  onBoardingData[index].title,
                  style: CustomTextStyles.poppins500Style24,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 16,
                ),
                 Text(
                   onBoardingData[index].subTitle,
                  style: CustomTextStyles.poppins300Style16,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }),
    );
  }
}
