import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tnt_store/constants.dart';
import 'package:tnt_store/core/utils/app_colors.dart';
import 'package:tnt_store/core/utils/app_images.dart';
import 'package:tnt_store/core/utils/app_text_styles.dart';
import 'package:tnt_store/core/widgets/custom_button.dart';
import 'package:tnt_store/core/widgets/custom_text_form_field.dart';
import 'package:tnt_store/core/widgets/password_field.dart';
import 'package:tnt_store/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';

import 'dont_have_an_account_widget.dart';
import 'or_divider.dart';
import 'social_login_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, password;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signInWithEmailAndPassword(
                          email,
                          password,
                        );
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
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
                onPressed: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: 'تسجيل بواسطة فيسبوك',
                image: Assets.imagesFacebookIcon,
                onPressed: () {
                  context.read<SigninCubit>().signInWithFacebook();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
