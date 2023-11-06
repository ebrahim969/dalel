import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../widgets/custom_txt_field.dart';
import '../widgets/terms_and_condition_widget.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
                  slivers: [
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 152,
            )),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(),
            ),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 8,
            )),
            const SliverToBoxAdapter(
              child: CustomTextFeild(textFieldName: AppStrings.fristName,),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFeild(textFieldName: AppStrings.lastName,),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFeild(textFieldName: AppStrings.emailAddress,),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFeild(textFieldName: AppStrings.password,),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConditionWidget(),
            ),
             SliverToBoxAdapter(
                child: SizedBox(
              height: Get.height * .07,
            )),
            SliverToBoxAdapter(
              child: CustomButton(text: AppStrings.signIn, onPressed: () {},)
            ),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 8,
            )),
            const SliverToBoxAdapter(
              child: AlradyHaveAccountWidget()
            ),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 16,
            ))
                  ],
                ),
          )),
    );
  }
}

class AlradyHaveAccountWidget extends StatelessWidget {
  const AlradyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(
        TextSpan(
              children: [
                const TextSpan(text: AppStrings.alreadyHaveAnAccount, style: CustomTextStyles.poppins400Style12),
                TextSpan(text: AppStrings.signIn,  style: CustomTextStyles.poppins400Style12.copyWith(color: AppColors.lightreay )),
              ]
            )),
    );
  }
}



