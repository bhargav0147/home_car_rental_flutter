// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../Core/App_Color.dart';

class VerifyAccountScreen extends StatefulWidget {
  const VerifyAccountScreen({super.key});

  @override
  State<VerifyAccountScreen> createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: Padding(
        padding:
            const EdgeInsets.only(right: 15, bottom: 15, left: 15, top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Verify Account',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                  fontFamily: 'pop'),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Verify Mobile Number',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.black,
                            fontFamily: 'pop'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'OTP has been sent to you on your mobile number, please enter it below',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.grey,
                            fontFamily: 'pop'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      OtpTextField(
                        numberOfFields: 4,
                        cursorColor: AppColors.black,
                        fieldWidth: 50,
                        focusedBorderColor: AppColors.black,
                        borderColor: AppColors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: Size.fromWidth(
                                MediaQuery.of(context).size.width * 1),
                            elevation: 0,
                            backgroundColor: AppColors.primaryBlue),
                        child: const Text(
                          'Verify Otp',
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColors.white,
                              fontFamily: 'pop'),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Don\'t received otp?',
                          style: TextStyle(
                              fontSize: 14,
                              color: AppColors.grey,
                              fontFamily: 'pop'),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fixedSize: const Size.fromWidth(150),
                                padding: const EdgeInsets.all(0),
                                elevation: 0,
                                backgroundColor: AppColors.green),
                            child: const Text(
                              'Resend in 30s',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.white,
                                  fontFamily: 'pop'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.back(); 
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fixedSize: const Size.fromWidth(150),
                                elevation: 0,
                                padding: const EdgeInsets.all(0),
                                backgroundColor: AppColors.primaryBlue),
                            child: const Text(
                              'Change number',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.white,
                                  fontFamily: 'pop'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
