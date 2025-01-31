import 'package:flutter/material.dart';
import 'package:tnt_store/constants.dart';
import 'package:tnt_store/core/utils/app_colors.dart';
import 'package:tnt_store/core/utils/app_images.dart';
import 'package:tnt_store/core/utils/app_text_styles.dart';
import 'package:tnt_store/core/widgets/custom_button.dart';
import 'package:tnt_store/core/widgets/custom_text_form_field.dart';

import 'dont_have_an_account_widget.dart';
import 'or_divider.dart';
import 'social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const CustomTextFormField(
                hintText: 'تسجيل الدخول',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xffC9CECF),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                text: 'تسجيل الدخول',
                onPressed: () {},
              ),
              const SizedBox(
                height: 33,
              ),
              const DontHaveAnAccountWidget(),
              const SizedBox(
                height: 33,
              ),
              const OrDivider(),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: 'تسجيل بواسطة جوجل',
                image: Assets.imagesGoogleIcon,
                onPressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: 'تسجيل بواسطة أبل',
                image: Assets.imagesAppleIcon,
                onPressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: 'تسجيل بواسطة فيسبوك',
                image: Assets.imagesFacebookIcon,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
