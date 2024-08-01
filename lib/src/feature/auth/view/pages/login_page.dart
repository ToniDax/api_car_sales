


import 'dart:ui';

import 'package:api_car_hometask/src/core/style/app_colors.dart';
import 'package:api_car_hometask/src/core/style/text_style.dart';
import 'package:api_car_hometask/src/feature/auth/view/pages/sign_up_page.dart';
import 'package:api_car_hometask/src/feature/auth/view/widgets/custom_text_field_widget.dart';
import 'package:api_car_hometask/src/feature/auth/view/widgets/sign_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            height: MediaQuery.sizeOf(context).height*0.06,
          ),

          Center(
            child: Image.asset(height: 76,

              "assets/images/c_belgisi.png",
            ),
          ),

          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
          ),

           const Center(
              child: Text("Login",
                        style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: FontSize.size20,
                        ),
                        ),
            ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.01,
          ),

          const  Center(
            child: Text("Welcome to CarStore",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: FontSize.size14,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.09,
          ),

          CustomTextField(
            labelText: 'Username', controller: userNameController,
            prefixIcon: const Icon(Icons.perm_contact_calendar_outlined),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.02,
          ),

          CustomTextField(
            labelText: 'Password', controller: passwordController,
            prefixIcon: const Icon(Icons.lock),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.03,
          ),

          const  Center(
            child: Text("Forgot Password?",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: FontSize.size14,
                color: AppColors.lightOrqaFonRangi,
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.03,
          ),

          SignButtonWidget(text: 'Login',
              color: AppColors.orangeRang,
              onPressed:(){

            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
              } ),

          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                    },
                    child:const Text('Sign Up',
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
