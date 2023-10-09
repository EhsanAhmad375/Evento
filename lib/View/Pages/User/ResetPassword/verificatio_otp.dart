import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_field.dart';
import '../../../../Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';

class VarificationOtp extends StatelessWidget {
 VarificationOtp({super.key});
  OtpFieldController otpFieldController=OtpFieldController();
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
              title: 'Verification',
            ),
            SizedBox(height: media.height*0.02,),
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
                      
                      children: [
                  
                              SizedBox(
                                height: media.height * 0.04,
                              ),
                              Text(
                                'Enter your verification code',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.darkBlue),
                              ),
                              SizedBox(
                                height: media.height * 0.07,
                              ),
                              Text('Please toye the verification code sent to'),
                              SizedBox(
                                height: media.height * 0.01,
                              ),
                              Text('ehsan@gmail.com'),
                              SizedBox(
                                height: media.height * 0.03,
                              ),
                             OTPTextField(
                  length: 4,
                  width: Get.width,
                  fieldStyle: FieldStyle.box,
                  fieldWidth: Get.width * 0.15,
                  onChanged: (val) {
                    print('otp' + val);
                  },
                ),
                              SizedBox(
                                height: media.height * 0.35,
                              ),
                            
                        
                            Center(
                              child: Text(
                                'Resend My Code',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            SizedBox(
                                height: media.height * 0.04,
                              ),
                            RoundButtonCustom(
                              title: 'Next',
                              onTap: (){
                                Get.toNamed(RouteName.createNewPassword);
                              },
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
