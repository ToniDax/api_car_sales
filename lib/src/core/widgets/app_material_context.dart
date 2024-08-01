import 'package:api_car_hometask/src/feature/main/view/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../../feature/auth/view/pages/splash_page.dart';

class AppMaterialContext extends StatelessWidget {
  const AppMaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
