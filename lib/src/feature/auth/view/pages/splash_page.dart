import 'package:api_car_hometask/src/feature/auth/view/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>   LoginPage() ),);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        
        child: Image.asset('assets/images/splash.png',
        fit: BoxFit.cover,),
        
      ),
    );
  }
}
