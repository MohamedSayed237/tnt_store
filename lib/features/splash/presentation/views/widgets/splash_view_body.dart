import 'package:flutter/material.dart';
import 'package:tnt_store/features/onboarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
        'assets/images/app_icon.png',
        width: 150,
        height: 150,
      ),
    ));
  }
  
  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, OnBoardingView.routeName);
    });
  }
}
