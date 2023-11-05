import 'package:dalel_app/core/database/caches/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../auth/presentation/views/signup_view.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/get_buttons.dart';
import '../widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomNavBar(
                onTap: () {
                  CachHelper().saveData(key: "isOnBoardingVisited", value: true);
                  Get.to(() => const SignUpView());
                },
              ),
              OnBoardingViewBody(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              const SizedBox(
                height: 88,
              ),
              GetButtons(currentIndex: currentIndex, controller: _controller),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
