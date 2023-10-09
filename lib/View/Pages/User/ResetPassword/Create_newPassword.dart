import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';



class CreateNewPassword  extends StatelessWidget {
  const CreateNewPassword ({super.key});

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
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
          AppbarCustom(media: media,title: 'Create New Password',),
          SizedBox(height: media.height*0.02,),
                Expanded(
                  child: Container(
                    width: media.width,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SizedBox(height: media.height*0.04,),
                                Text('Please choose your new password',style: TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.w300
                                ),),
                                SizedBox(height: media.height*0.07,),
                                TextFeildCustom(hint: 'Create New Password',prefixIcon: Icons.vpn_key_outlined,sufixIcon: Icons.anchor_outlined,),
                                SizedBox(height: media.height*0.02,),
                                TextFeildCustom(hint: 'Confirm New Password',prefixIcon: Icons.vpn_key_outlined,sufixIcon: Icons.anchor_outlined,),
                                SizedBox(height: media.height*0.01,),
                            
                                ],
                            ),
                          ),
                                RoundButtonCustom(title: 'Next',
                                onTap: (){
                                  Get.toNamed(RouteName.sucess);
                                },
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
        ],
       ),
     ),);
 
  }
}
