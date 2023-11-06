import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/features/auth/presentation/cubits/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/sign_up_widgets/sign_up_view_body.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignUpViewBody(),
      )),
    );
  }
}
