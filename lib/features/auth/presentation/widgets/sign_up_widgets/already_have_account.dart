import 'package:dalel_app/features/auth/presentation/views/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';



class AlradyHaveAccountWidget extends StatelessWidget {
  const AlradyHaveAccountWidget({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.to(()=> const SignInView());},
      child: Align(
        child: Text.rich(TextSpan(children: [
          const TextSpan(
              text: AppStrings.alreadyHaveAnAccount,
              style: CustomTextStyles.poppins400Style12),
          TextSpan(
              text: AppStrings.signIn,
              style: CustomTextStyles.poppins400Style12
                  .copyWith(color: AppColors.lightreay)),
        ])),
      ),
    );
  }
}
