import 'package:flutter/material.dart';
import 'package:tnt_store/core/widgets/custom_app_bar.dart';
import 'package:tnt_store/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: LoginViewBody(),
    );
  }
}
