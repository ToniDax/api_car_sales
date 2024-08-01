


import 'dart:ui';

import 'package:api_car_hometask/app.dart';
import 'package:api_car_hometask/src/core/style/app_colors.dart';
import 'package:api_car_hometask/src/core/style/text_style.dart';
import 'package:api_car_hometask/src/feature/main/view/pages/home_page.dart';
import 'package:api_car_hometask/src/feature/auth/view/pages/login_page.dart';
import 'package:api_car_hometask/src/feature/auth/view/widgets/custom_text_field_widget.dart';
import 'package:api_car_hometask/src/feature/auth/view/widgets/sign_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  get userNameController => TextEditingController();

  get passwordController => TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
            Center(
              child: Image.asset(height: 76,

                "assets/images/c_belgisi.png",
              ),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.03,
            ),

            const Center(
              child: Text("Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: FontSize.size20,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.009,
            ),

            const  Center(
              child: Text("Find your dream car!",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: FontSize.size14,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.018,
            ),

            CustomTextField(
              labelText: 'Full name', controller: userNameController,
              prefixIcon: const Icon(Icons.person_sharp),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.018,
            ),

            CustomTextField(
              labelText: 'Email address', controller: passwordController,
              prefixIcon: const Icon(Icons.email_outlined),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.018,
            ),

            CustomTextField(
              labelText: 'Phone number', controller: passwordController,
              prefixIcon: const Icon(Icons.phone),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.018,
            ),

            CustomTextField(
              labelText: 'Password', controller: passwordController,
              prefixIcon: const Icon(Icons.lock),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.03,
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.015,
            ),

            SignButtonWidget(text: 'Sign Up',
                color: AppColors.orangeRang,
                onPressed:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));

                } ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.005,
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/chiziq.png',
                  width: 150,
                  height: 3,
                  color: AppColors.iconRangi,),
                  SizedBox(width: MediaQuery.sizeOf(context).height*0.009,),
                 const Text('Or',style: TextStyle(
                    color: AppColors.iconRangi,
                    fontWeight: FontWeight.w500,
                    fontSize:FontSize.size14,

                  ),
                 ),
                  SizedBox(width: MediaQuery.sizeOf(context).height*0.009,
                  ),
                  Image.asset('assets/images/chiziq.png',
                    width: 150,
                  height: 3,

                  color: AppColors.iconRangi,),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.0001,
            ),

            Center(
              child: TextButton(
                onPressed: (){},
                child:const Text('Sign Up with',
                  style: TextStyle(
                    color: AppColors.orangeRang,
                    fontSize: FontSize.size12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/facebook.png",
                  color: AppColors.darkOrqaFonRangi,
                    width: 24,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).height*0.03,
                  ),
                  Image.asset("assets/images/instagram.png",
                    color: AppColors.darkOrqaFonRangi,
                    width: 24,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).height*0.03,
                  ),
                  Image.asset("assets/images/youtube.png",
                    color: AppColors.darkOrqaFonRangi,
                    width: 24,
                  ),

                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.0085,
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have an account?',
                    style: TextStyle(
                      color: AppColors.kulrangYozuvRangi,
                      fontWeight: FontWeight.w400,
                      fontSize: FontSize.size14,
                    ),),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child:const Text('Sign In',
                      style: TextStyle(
                        color: AppColors.orangeRang,
                        fontSize: FontSize.size14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

          ],

        ),
      ),

    );
  }
}
