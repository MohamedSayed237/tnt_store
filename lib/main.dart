import 'package:flutter/material.dart';

import 'core/healper_functions/on_generate_routes.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const TntStore());
}

class TntStore extends StatelessWidget {
  const TntStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
