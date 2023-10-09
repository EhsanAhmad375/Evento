import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../Common/AppColor.dart';
import '../../../../Utility/RouteName.dart';
import '../../../../Widget/RoundButton.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../Widget/TextFeildCustom.dart';
import '../../../../Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/MyController.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
            gradient:LinearGradient(colors: [
          AppColors.white,
          AppColors.backPink,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        ),
        
        
        ),
        child: Column(
          children: [
            AppbarCustom(
              media: media,
              title: 'Sign up',
            ),
            Expanded(
              child: Container(
                width: media.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Login to your account',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.darkBlue),
                              ),
                              SizedBox(
                                height: media.height * 0.05,
                              ),
                              TextFeildCustom(
                                hint: 'Your Email',
                                prefixIcon: Icons.email_sharp,
                              ),
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: TextFeildCustom(
                                    hint: 'Firest Name',
                                    prefix: false,
                                  )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: TextFeildCustom(
                                    hint: 'SurName',
                                    prefix: false,
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              TextFeildCustom(
                                hint: 'Your Password',
                                prefixIcon: Icons.vpn_key_outlined,
                                sufixIcon: Icons.anchor_outlined,
                              ),
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              TextFeildCustom(
                                hint: 'Confirm Password',
                                prefixIcon: Icons.vpn_key_outlined,
                                sufixIcon: Icons.anchor_outlined,
                              ),
                              SizedBox(
                                height: media.height * 0.01,
                              ),
                              SizedBox(
                                height: media.height * 0.04,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            GetBuilder<MyController>(
                              init: MyController(), // Initialize the controller
                              builder: (controller) {
                                return Checkbox(
                                  value: controller.Signinchekbox
                                      .value, // Access the value from the controller
                                  onChanged: (val) {
                                    // Update the value using the controller
                                    controller.Signinchekbox.value =
                                        !controller.Signinchekbox.value;
                                  },
                                );
                              },
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: 'I have read and agree with the, '),
                                    TextSpan(
                                        text: 'Terms of Service ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.darkBlue)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: media.height*0.15,),
                        RoundButtonCustom(
                          title: 'SignUp',
                          isVisible: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
