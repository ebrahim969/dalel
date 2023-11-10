import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/features/auth/presentation/cubits/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/cubits/cubit/auth_state.dart';
import 'package:dalel_app/features/auth/presentation/widgets/sign_up_widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_txt_field.dart';

class CustomSignUpForm extends StatefulWidget {
  const CustomSignUpForm({super.key});

  @override
  State<CustomSignUpForm> createState() => _CustomSignUpFormState();
}

class _CustomSignUpFormState extends State<CustomSignUpForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
      },
      builder: (context, state) {
       AuthCubit authCubit = context.read<AuthCubit>();
        return Form(
          autovalidateMode: autovalidateMode,
          key: authCubit.signUpKey,
          child: Column(
        children: [
           CustomTextFormFeild(textFieldName: AppStrings.fristName,
            onChange: (fristName) {
            authCubit.fristName = fristName;
          },),

           CustomTextFormFeild(textFieldName: AppStrings.lastName,
          onChange: (lastName) {
            authCubit.lastName = lastName;
          },),

           CustomTextFormFeild(textFieldName: AppStrings.emailAddress,
          validator: (value) {
            if (value!.isEmpty)
            {
              return "Field is required";
            }
            else if(!value.contains("@gmail.com"))
            {
              return "Email must contains @gmail.com";
            }
            else{
              return null;
            }
          }, 
          onChange: (emailAddress) {
            authCubit.emailAddress = emailAddress;
          },),

           CustomTextFormFeild(textFieldName: AppStrings.password,
           suffixIcon: IconButton(
                  icon: Icon(
                    authCubit.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    authCubit.obscurePasswordText();
                  },
                ),
                obscureText: authCubit.obscurePasswordTextValue,
            validator: (value) {
              if (value!.isEmpty)
            {
              return "Field is required";
            }
            else if(value.length < 8)
            {
              return "password must be 8 characterts";
            }else{
              return null;
            }
          }, 
           onChange: (password) {
            authCubit.password = password;
          },),

          const TermsAndConditionWidget(),

          SizedBox(height: Get.height * .07),

          CustomButton(
              text: AppStrings.signIn,
              backgroundColor: authCubit.termsAndConditionCkeckValue == false ? AppColors.gray: null,
              onPressed: () {
                if(authCubit.termsAndConditionCkeckValue == true)
                {
                  if(authCubit.signUpKey.currentState!.validate())
                {
                  authCubit.signUpKey.currentState!.save();
                  authCubit.signUpWithEmailAndPassword();
                }else
                {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {
                    
                  });
                }
                }
              },
            ),
        ],
      ));
      },
    );
       
  }
}