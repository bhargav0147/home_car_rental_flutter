import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homecarrental/Screens/Dashboard/Dash_Screen.dart';
import 'package:homecarrental/Screens/Forgot/Forgot_Password_Screen.dart';
import 'package:homecarrental/Screens/Login/Login_Screen.dart';
import 'package:homecarrental/Screens/Sign_Up/Signup_Screen.dart';
import 'package:homecarrental/Screens/Splash/Splash_Screen.dart';
import 'package:homecarrental/Screens/Verify_Account/Verify_Account_Screen.dart';

void main()
{
  runApp(GetMaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    initialRoute: '/dash',
    routes: {
      '/':(p0) => const SplashScreen(),
      '/signup':(p0) => const SignUpScreen(),
      '/verify':(p0) => const VerifyAccountScreen(),
      '/login':(p0) => const LoginScreen(),
      '/forgot':(p0) => const ForgotPasswordScreen(),
      '/dash':(p0) => const DashScreen(),
    },
  ));
}