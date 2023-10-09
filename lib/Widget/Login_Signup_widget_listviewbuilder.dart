import 'package:get/get.dart';
import '../Common/AppColor.dart';
import 'package:flutter/material.dart';
import '../Controller/MyController.dart';
import 'package:event_booking/Utility/RouteName.dart';

class LoginSignupCustomWigget extends StatelessWidget {
  const LoginSignupCustomWigget({
    Key? key,
    required this.media,
  }) : super(key: key);

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<MyController>(
        init: MyController(),
        builder: (controller) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.myIndex.value = index;
                  controller.myIndex.value == 0
                      ? Get.toNamed(RouteName.loginScreen)
                      : Get.toNamed(RouteName.signinScreen);
                },
                child: Obx(
                  () => Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      // vertical: 12
                    ),
                    width: media.width * 0.4,
                    decoration: BoxDecoration(
                      color: controller.myIndex.value == index
                          ? AppColors.darkBlue
                          : AppColors.styBlue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "${controller.onboardingName[index]}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: controller.myIndex.value == index
                              ? AppColors.styBlue
                              : AppColors.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
