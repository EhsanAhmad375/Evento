import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Controller/MyController.dart';
import 'package:event_booking/View/Pages/User/login_signup/Login_signup_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.white,
              Color(0xffFFD7D5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              height: media.height * 0.2,
              width: media.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Ornament.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(child: Image.asset('assets/Logo2.png')),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                ),
                child: Column(
                  children: [
                    ListvireCustom(media: media),
                    SizedBox(height: media.height * 0.014,),
                    Container(
                      width: media.width,
                      height: media.height*0.2,
                      child: ListvireCustom(media: media)),
                    SizedBox(height: media.height * 0.014,),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "See what's happening in your area",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: media.height * 0.05,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae,',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: media.height * 0.06,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: RoundButtonCustom(
                        title: 'Get Started',
                        isVisible: true,
                        onTap: () {
                          Get.toNamed(RouteName.loginSignupScreen);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListvireCustom extends StatelessWidget {
  const ListvireCustom({
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: media.height * 0.2,
      child: GetBuilder<MyController>(
        init: MyController(),
        builder: (controller) {
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.onBoardingList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  width: media.width * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${controller.onBoardingList[index]}'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
