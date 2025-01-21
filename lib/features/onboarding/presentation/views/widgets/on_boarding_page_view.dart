import 'package:flutter/material.dart';
import 'package:tnt_store/core/utils/app_colors.dart';
import 'package:tnt_store/core/utils/app_images.dart';
import 'package:tnt_store/core/utils/app_text_styles.dart';

import 'page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Image.asset('assets/images/image_page_view_item.png'),
          backgroundImage: Assets.backgroundImagePageView,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبًا بك في ',
                style: TextStyles.bold23,
              ),
              Text(
                ' STORE ',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.secondryColor,
                ),
              ),
              Text(
                'TNT',
                style: TextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          subtitle:
              'دلوقتي تقدر تختار وتشتري اللي يعجبك من غير أي تعب، واحنا هنوصله لك لحد باب بيتك بسرعة وسهولة',
        ),
        PageViewItem(
          isVisible: false,
          image: Image.asset('assets/images/image_page_view_item.png'),
          backgroundImage: Assets.backgroundImagePageView,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'ابحث وتسوق',
                style: TextStyles.bold23,
              ),
            ],
          ),
          subtitle:
              'دلوقتي التيشرتات والهوديز المريحة والمميزة كلها في مكان واحد، عشان تختار اللي يناسبك بسهولة',
        ),
      ],
    );
  }
}
