import 'package:dalel_app/features/auth/presentation/widgets/sign_up_widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import 'already_have_account.dart';
import 'custom_sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 152)),
          SliverToBoxAdapter(child: WelcomeTextWidget()),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(child: CustomSignUpForm()),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(child: AlradyHaveAccountWidget()),
          SliverToBoxAdapter(child: SizedBox(height: 16))
        ],
      ),
    );
  }
}
