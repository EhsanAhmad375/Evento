import '../../Common/AppColor.dart';
import 'package:flutter/material.dart';
import '../../Controller/HomeController.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Home_TrendingList extends StatelessWidget {
  const Home_TrendingList({
    super.key,
    required this.media,
  });

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: media.height * 0.2,
      width: media.height,
      child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (homeController) {
            return Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeController.trendingList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteName.eventDetail, arguments: {
                          "title":
                              "${homeController.trendingList[index].title}",
                          "image":
                              "${homeController.trendingList[index].image}",
                          "loc": "${homeController.trendingList[index].loc}",
                          "amount":
                              "${homeController.trendingList[index].amount}",
                          "date": "${homeController.trendingList[index].date}",
                          "country":
                              "${homeController.trendingList[index].country}",
                          "event":
                              "${homeController.trendingList[index].event}",
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: media.height * 0.2,
                        width: media.width * 0.8,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${homeController.trendingList[index].image}'),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${homeController.trendingList[index].title}',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.width_full_sharp,
                                          color: AppColors.white,
                                        ),
                                        Text(
                                          '${homeController.trendingList[index].date}',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                          width: media.width * 0.04,
                                        ),
                                        Icon(
                                          Icons.location_on_rounded,
                                          color: AppColors.white,
                                        ),
                                        Text(
                                          '${homeController.trendingList[index].loc}',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: media.width * 0.17,
                                    height: media.height * 0.04,
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        homeController.trendingList[index]
                                                    .amount ==
                                                'FREE'
                                            ? '${homeController.trendingList[index].amount}'
                                            : '\$${homeController.trendingList[index].amount}',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.blue),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            );
          }),
    );
  }
}
