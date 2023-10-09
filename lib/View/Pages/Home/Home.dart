import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Widget/home/Home_Trending.dart';
import '../../../Widget/home/HomeBestForYou.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Widget/persistantNav.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/HomeController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class Home extends StatelessWidget {
  
  const Home({super.key});
  
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
              title: "Hi Danie!",
              isSufix: true,
              backArrow: false,
              sufix: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: AppColors.blue,
                    size: 15,
                  ),
                  SizedBox(
                    width: media.width * 0.01,
                  ),
                  Text(
                    'Indonesia',
                    style: TextStyle(color: AppColors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: media.height * 0.1,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        onTap: (){
                          Get.toNamed(RouteName.nearbyEvent);
                        },
                        leading: Image.asset('assets/fav/map.png'),
                        title: Text(
                          ' Find Nearby Event',
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
                        ),
                        subtitle: Text('Events with Nearest Location'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                  ),
                  SizedBox(height: media.height * 0.03),
                  Text(
                    'Trending',
                    style: TextStyle(fontSize: 18, color: AppColors.grey),
                  ),
                  SizedBox(height: media.height * 0.02),
                  Home_TrendingList(media: media),
                  
                  SizedBox(height: media.height * 0.02),
                  Text(
                    'Best For You',
                    style: TextStyle(fontSize: 18, color: AppColors.grey),
                  ),
                  SizedBox(height: media.height * 0.02),
                  Home_BestForYou_List(),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
