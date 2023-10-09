import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import '../../../Widget/Organizer_prfile/FavOrganizers.dart';
import 'package:event_booking/Controller/favoriteController.dart';


class FollowOrganizers extends StatelessWidget {
  const FollowOrganizers({super.key});

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
              title: 'Follow Organizers',
              backArrow: false,
              // isSufix: true,
             
            ),
            FavOrganizers(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20,top: 2 ),
              child: Stack(
                children: [
                  // bottom: 20,
                  RoundButtonCustom(
                    title: 'Next',
                    onTap: () {
                      Get.toNamed(RouteName.loadingPersonlinzation);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
