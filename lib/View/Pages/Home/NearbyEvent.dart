import 'package:flutter/material.dart';
import '../../../Utility/RouteName.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Widget/home/NearByEvents.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/NearbyController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class NearbyEvent extends StatelessWidget {
  const NearbyEvent({super.key});
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
              title: 'Nearby Events',
              isSufix: true, 
              sufix: GestureDetector(
                onTap: (){
                  Get.toNamed(RouteName.contectOrganizer);
                },
                child: Image.asset('assets/home/nearby.png')),
            ),
            Expanded(child: NearbyEvents()),
            
          ],
        ),
      ),
    );
  }
}
