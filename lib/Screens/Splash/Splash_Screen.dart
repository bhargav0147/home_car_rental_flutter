// ignore_for_file: use_super_parameters, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homecarrental/Core/App_Color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadSplash();
  }

  _loadSplash() async {
    // Delay for 3 seconds
    await Future.delayed(const Duration(seconds: 3));
    // Navigate to signup screen
    Get.offNamed('/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primaryBlue.withOpacity(0.3),
              AppColors.primaryBlue,
              AppColors.primaryBlue.withOpacity(0.3),
              
            ],
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Icon(
                Icons.app_shortcut,
                size: 50,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Car Home Rental',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                fontFamily: 'pop'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
