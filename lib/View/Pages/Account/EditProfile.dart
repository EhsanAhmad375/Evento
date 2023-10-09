import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, AppColors.backPink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            AppbarCustom(
              media: media,
              title: 'Edit Profile',
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Expanded(
              child: Container(
                width: media.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Container(
                        child: Column(children: [
                          SizedBox(
                            height: media.height * 0.04,
                          ),
                          Container(
                            height: media.height * 0.13,
                                  width: media.width * 0.23,
                            child: Stack(
                              children: [
                                Container(
                                  height: media.height * 0.1,
                                  width: media.width * 0.22,
                                  decoration: BoxDecoration(
                                      color: AppColors.styBlue,
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                          image: AssetImage('assets/home/Profile.png'),
                                          fit: BoxFit.cover)),
                                          
                                ),
                                    Positioned(
                                            bottom: 20,
                                            right: -6.5,
                                            child: Container(
                                              height: media.height*0.035,
                                              width: media.width*0.1,
                                              decoration: BoxDecoration(
                                                color: AppColors.styBlue,shape: BoxShape.circle
                                              ),
                                              child: Icon(Icons.camera_alt_outlined,color: AppColors.white,size: 17,)))
                                      
                              ],
                            ),
                          ),
                          SizedBox(
                            height: media.height * 0.025,
                          ),
                          TextFeildCustom(prefix: false,
                          hint: 'Name',),
                          SizedBox(
                            height: media.height * 0.025,
                          ),
                          TextFeildCustom(prefix: false,hint: 'Date',sufixIcon: Icons.calendar_month,),
                          SizedBox(
                            height: media.height * 0.025,
                          ),
                          TextFeildCustom(hint: 'Your Emiail',prefix: false),
                          SizedBox(
                            height: media.height * 0.025,
                          ),
                          TextFeildCustom(hint: 'Your Phone Number',prefix: false,),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: RoundButtonCustom(title: 'Save',onTap: (){
                        Get.back();
                        
                        },),
                      ),
                    ],
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
