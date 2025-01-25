import 'package:flutter/material.dart';
import 'package:tnt_store/constants.dart';
import 'package:tnt_store/core/services/shared_prefrences_singleton.dart';
import 'package:tnt_store/features/auth/presentation/views/login_view.dart';
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
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushNamed(context, LoginView.routeName);
      } else {
        Navigator.pushNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
