import 'package:dalel_app/features/auth/presentation/widgets/sign_up_widgets/terms_and_condition_widget.dart';
import 'package:dalel_app/features/auth/presentation/widgets/sign_up_widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'already_have_account.dart';
import 'custom_txt_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              child: CustomTextFeild(
                textFieldName: AppStrings.fristName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFeild(
                textFieldName: AppStrings.lastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFeild(
                textFieldName: AppStrings.emailAddress,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFeild(
                textFieldName: AppStrings.password,
              ),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConditionWidget(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: Get.height * .07,
            )),
            SliverToBoxAdapter(
                child: CustomButton(
              text: AppStrings.signIn,
              onPressed: () {},
            )),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 8,
            )),
            const SliverToBoxAdapter(child: AlradyHaveAccountWidget()),
            const SliverToBoxAdapter(
                child: SizedBox(
              height: 16,
            ))
          ],
        ),
      );
  }
}