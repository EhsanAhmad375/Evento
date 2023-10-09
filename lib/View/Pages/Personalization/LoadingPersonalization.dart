import 'dart:async';
import '../../../Common/AppColor.dart';
import 'package:flutter/material.dart';
import '../../../Utility/RouteName.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoadingPersonlization extends StatefulWidget {
  const LoadingPersonlization({super.key});

  @override
  State<LoadingPersonlization> createState() => _LoadingPersonlizationState();
}

class _LoadingPersonlizationState extends State<LoadingPersonlization> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NextScreen();
  }

  void NextScreen() {
    Timer(Duration(seconds: 3),
        () => Get.offAllNamed(RouteName.persistance_bottom_Nav_bar));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              AppColors.SplashScreenColor,
              AppColors.SplashScreenColor,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Logo.png'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Finding the Best Event for you...',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )),
    );
  }
}
