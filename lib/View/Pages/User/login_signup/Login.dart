import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';

class LoginScreen  extends StatelessWidget {
  const LoginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
    return Scaffold(
      
      
     body: Container(
      decoration: BoxDecoration(
            gradient:LinearGradient(colors: [
          AppColors.white,
          Color(0xffFFD7D5),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        ),
        
        
        ),
       child: Column(
        
        children: [
          AppbarCustom(media: media,title: 'Login',),
                Expanded(
                  child: Container(
                    width: media.width,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(height: media.height*0.04,),
                                  Text('Login to your account',style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.darkBlue
                                  ),),
                                  SizedBox(height: media.height*0.07,),
                                  TextFeildCustom(hint: 'Your Email',prefixIcon: Icons.email_sharp,),
                                  SizedBox(height: media.height*0.02,),
                                  TextFeildCustom(hint: 'Your Password',prefixIcon: Icons.vpn_key_outlined,sufixIcon: Icons.anchor_outlined,),
                                  SizedBox(height: media.height*0.01,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(onPressed: (){Get.toNamed(RouteName.chooseMethod);},
                                        child: Text('Forget your password?',style: TextStyle(
                                          fontSize: 14,fontWeight: FontWeight.w500,
                                        ),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: media.height*0.07,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Register your account?',),
                                      TextButton(onPressed: (){
                                        Get.toNamed(RouteName.signinScreen);
                                      }, child:Text('SignUp',
                                      style: TextStyle(
                                        fontSize: 18
                                      ),
                                      ))
                                    ],
                                  ),
                            
                                  ],
                              ),
                            ),
                            SizedBox(height: media.height*0.238,),
                                  RoundButtonCustom(title: 'Login',isVisible: true,onTap: (){
                                    Get.toNamed(RouteName.favriteEvent);
                                  },),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
       ),
     ),);
 
  }
}
