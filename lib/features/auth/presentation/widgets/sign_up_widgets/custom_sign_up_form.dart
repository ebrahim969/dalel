import 'dart:developer';

import 'package:dalel_app/features/auth/presentation/cubits/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/cubits/cubit/auth_state.dart';
import 'package:dalel_app/features/auth/presentation/widgets/sign_up_widgets/terms_and_condition_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_txt_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Form(
          child: Column(
        children: [
           CustomTextFormFeild(textFieldName: AppStrings.fristName,
            onChange: (fristName) {
            context.read<AuthCubit>().fristName = fristName;
          },),
           CustomTextFormFeild(textFieldName: AppStrings.lastName,
          onChange: (lastName) {
            context.read<AuthCubit>().lastName = lastName;
          },),
           CustomTextFormFeild(textFieldName: AppStrings.emailAddress,
          onChange: (emailAddress) {
            context.read<AuthCubit>().emailAddress = emailAddress;
          },),
           CustomTextFormFeild(textFieldName: AppStrings.password,
           onChange: (password) {
            context.read<AuthCubit>().password = password;
          },),
          const TermsAndConditionWidget(),
          SizedBox(height: Get.height * .07),
          CustomButton(
              text: AppStrings.signIn,
              onPressed: () {
                context.read<AuthCubit>().signUpWithEmailAndPassword();
              },
            ),
        ],
      ));
      },
    );
       
  }
}