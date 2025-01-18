import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tnt_store/constants.dart';
import 'package:tnt_store/core/utils/app_images.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title});

  final String subtitle, backgroundImage;
  final Widget title, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  Assets.backgroundImagePageView,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/image_page_view_item.png')),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('تخطي'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
