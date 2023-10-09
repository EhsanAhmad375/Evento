import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/HomeController.dart';

class MyNotifications extends StatelessWidget {
   MyNotifications({super.key});

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
              title: 'Notification',
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Expanded(
                child: Container(
              width: media.width,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: media.height * 0.025,
                    ),
                    Text(
                      'Today',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: GetBuilder<HomeController>(
                          init: HomeController(),
                          builder: (homeController) {
                            String time = DateFormat('h:mm a').format(dateTime);
                            return ListView.builder(
                                itemCount: homeController.trendingList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: ListTile(
                                        leading: Container(
                                          height: media.height*0.08,
                                          width: media.width*0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  '${homeController.trendingList[index].image}'))),
                                    ),
                                    title: Text('${homeController.trendingList[index].title}'),
                                    subtitle: Text('${homeController.trendingList[index].country}'),
                                    trailing: Text('${time}'),
                                    ),
                                  );
                                });
                          }),
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
  DateTime dateTime = DateTime.now();
  
}
