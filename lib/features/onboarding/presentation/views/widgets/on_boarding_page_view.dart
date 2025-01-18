import 'package:flutter/material.dart';
import 'package:tnt_store/core/utils/app_images.dart';

import 'page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Image.asset('assets/images/image_page_view_item.png'),
          backgroundImage: Assets.backgroundImagePageView,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبا بك في '),
              Text('STORE '),
              Text('TNT'),
            ],
          ),
          subtitle:
              'دلوقتي تقدر تختار وتشتري اللي يعجبك من غير أي تعب، واحنا هنوصله لك لحد باب بيتك بسرعة وسهولة',
        ),
        PageViewItem(
          image: Image.asset('assets/images/image_page_view_item.png'),
          backgroundImage: Assets.backgroundImagePageView,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبا بك في '),
              Text('STORE '),
              Text('TNT'),
            ],
          ),
          subtitle:
              'دلوقتي التيشرتات والهوديز المريحة والمميزة كلها في مكان واحد، عشان تختار اللي يناسبك بسهولة',
        ),
      ],
    );
  }
}
