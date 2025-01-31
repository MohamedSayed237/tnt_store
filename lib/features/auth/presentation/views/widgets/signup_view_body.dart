import 'package:flutter/material.dart';
import 'package:tnt_store/constants.dart';
import 'package:tnt_store/core/widgets/custom_button.dart';
import 'package:tnt_store/core/widgets/custom_text_form_field.dart';
import 'package:tnt_store/features/auth/presentation/views/widgets/have_an_account_widget.dart';

import 'terms_and_conditions_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
           const  CustomTextFormField(
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
           const TermsAndConditionsWidget(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(text: 'إنشاء حساب جديد', onPressed: () {}),
           const  SizedBox(
              height: 26,
            ),
           const HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
