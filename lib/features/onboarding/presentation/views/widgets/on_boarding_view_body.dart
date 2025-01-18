import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tnt_store/constants.dart';
import 'package:tnt_store/core/utils/app_colors.dart';
import 'package:tnt_store/core/widgets/custom_button.dart';

import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: AppColors.primaryColor.withOpacity(0.5)),
        ),
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomButton(
            text: 'ابدأ الان',
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
