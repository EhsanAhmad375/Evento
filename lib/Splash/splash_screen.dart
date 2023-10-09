import 'dart:async';
import '../Common/AppColor.dart';
import '../Utility/RouteName.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';





class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NextScreen();

  }

    void NextScreen(){
      Timer(
          Duration(seconds: 3),
          () => Get.offAllNamed(RouteName.chooseLocation)
              
               );
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.SplashScreenColor,
            
            AppColors.SplashScreenColor,
            
          ],
          begin: Alignment.bottomRight,
           

          end:Alignment.topLeft,
          
          // stops: [0.2,0.9]

          )
          
        ),
        child: Center(child: Image.asset('assets/Logo.png'),)),
      
        
        
    );
  }
}