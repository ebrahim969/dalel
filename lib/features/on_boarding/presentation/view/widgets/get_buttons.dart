import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../auth/presentation/views/signin_view.dart';
import '../../../../auth/presentation/views/signup_view.dart';
import '../../../data/models/onboarding_model.dart';
import '../functions/on_boarding_visited.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({super.key, required this.currentIndex, required this.controller});
 
 final int currentIndex;
 final PageController controller;
  @override
  Widget build(BuildContext context) {
    if(currentIndex == onBoardingData.length-1)
    {
      return Column(
                      children: [
                        CustomButton(
                          text: "Create account",
                          onPressed: () {
                            onBoardingVisited();
                            Get.to(() => const SignUpView());
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            onBoardingVisited();
                            Get.to(()=> const SignInView());
                          },
                          child: Text(
                            "Login Now",
                            style: CustomTextStyles.poppins300Style16
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    );
    }else
    {
      return CustomButton(
                      text: AppStrings.next,
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(microseconds: 200),
                            curve: Curves.bounceIn);
                      },
                    );
    }
    
  }
}