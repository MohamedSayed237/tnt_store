import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tnt_store/core/services/get_it_service.dart';
import 'package:tnt_store/core/widgets/custom_app_bar.dart';
import 'package:tnt_store/features/auth/domain/repos/auth_repo.dart';
import 'package:tnt_store/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

import '../cubits/signin_cubit/signin_cubit.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = 'signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: BlocProvider(
        create: (context) => SigninCubit(
          getIt.get<AuthRepo>(),
        ),
        child: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}




