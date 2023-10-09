import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../Widget/SquareAppBarCustom.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';

class EnterEmail extends StatelessWidget {
  EnterEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Container(
                decoration: BoxDecoration(
            gradient:LinearGradient(colors: [
          AppColors.white,
          AppColors.white,
          AppColors.backPink,
          AppColors.backPink,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        ),
                ),
        height: media.height,
        child: Column(
          children: [
           SquareAppBar(media: media,title: 'Enter Email',iconImage: 'assets/emilicon.png',),
           Expanded(
             child: Container(
              width: media.width,
              decoration: BoxDecoration(
                
                color: AppColors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                child: SingleChildScrollView(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(children: [
                          
                          Text('Enter your registered email to reset your passwrd',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                          ),
                          ),
                          SizedBox(height: media.height*0.06,),
                          TextFeildCustom(
                            hint: 'e-mial adress',prefix: true,prefixIcon: Icons.email_outlined,
                          )
                        ]),
                      ),
                      SizedBox(height: media.height*0.175,),
                      RoundButtonCustom(title: 'Next',onTap: (){
                        Get.toNamed(RouteName.enterPhone);
                      },)
                    ],
                  ),
                ),
              ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
