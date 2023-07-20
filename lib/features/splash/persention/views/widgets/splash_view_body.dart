import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/assests.dart';
import 'package:book_store/features/home/persention/views/home_view.dart';
import 'package:book_store/features/splash/persention/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSladingAnmation();
    NavigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssestsData.logo,
          width: 300,
          height: 150,
        ),
        SlidingAnmationText(
            animationController: animationController,
            slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSladingAnmation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void NavigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: ktranstionDurstion);
    });
  }
}
