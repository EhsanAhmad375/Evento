import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Controller/HomeController.dart';
import '../../../Controller/favoriteController.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';
import 'package:event_booking/Widget/home/HomeBestForYou.dart';
import 'package:event_booking/Controller/SearchController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: media.height * 0.2,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextFeildCustom(
                      prefix: true,
                      prefixIcon: Icons.search,
                      hint: 'Search Events or Organizers',
                    ),
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hostory',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Cleear All',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  Container(
                    height: media.height * 0.06,
                    child: GetBuilder<SearchController>(
                        init: SearchController(),
                        builder: (searchController) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: searchController.historydown.length,
                            itemBuilder: (contex, index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(RouteName.searchResult,
                                  arguments: {
                                    'search':searchController.historyList[index].toString(),
                                  }
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Chip(
                                      backgroundColor: AppColors.white,
                                      label: Row(
                                        children: [
                                          Text(
                                              '${searchController.historyList[index]}'),
                                          SizedBox(
                                            width: media.width * 0.02,
                                          ),
                                          Icon(Icons.cancel_rounded)
                                        ],
                                      )),
                                ),
                              );
                            },
                          );
                        }),
                  ),
                  Container(
                    height: media.height * 0.06,
                    child: GetBuilder<SearchController>(
                        init: SearchController(),
                        builder: (searchController) {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: searchController.historydown.length,
                            itemBuilder: (contex, index) {
                              return GestureDetector(
                                onTap: () {
                                    Get.toNamed(RouteName.searchResult,
                                  arguments: {
                                    'search':searchController.historydown[index].toString(),
                                  }
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Chip(
                                      backgroundColor: AppColors.white,
                                      label: Row(
                                        children: [
                                          Text(
                                              '${searchController.historydown[index]}'),
                                          SizedBox(
                                            width: media.width * 0.02,
                                          ),
                                          Icon(Icons.cancel_rounded)
                                        ],
                                      )),
                                ),
                              );
                            },
                          );
                        }),
                  ),
                  Text(
                    'Suggestion',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w300),
                  ),
             Container(
      height: media.height * 0.50,
      width: media.height,
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (homeController) {
          return ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: homeController.trendingList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: media.height * 0.2,
                width: media.width * 0.8,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: media.height * 0.14,
                      width: media.width * 0.25,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              '${homeController.bestForYou[index].image}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.wallet_giftcard_outlined,
                                          color: AppColors.blue, size: 18),
                                      Text(
                                        '${homeController.bestForYou[index].date}',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Obx(
                                  () => GestureDetector(
                                      onTap: () {
                                        homeController.isFavoriteState(index);
                                      },
                                      child: homeController.isFavorite(index)
                                          ? Icon(
                                              Icons.favorite,
                                              color: AppColors.favorite,
                                            )
                                          : Icon(
                                              Icons.favorite_border,
                                            )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: media.height * 0.015,
                            ),
                            Text(
                              '${homeController.bestForYou[index].title}',
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: media.height * 0.015,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${homeController.bestForYou[index].loc}',
                                  style: TextStyle(color: AppColors.grey),
                                ),
                                Text(
                                  homeController.bestForYou[index].amount!=0?'\$${homeController.bestForYou[index].amount}':'FREE',
                                  style: TextStyle(color: AppColors.blue),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
          
          
          
            },
          );
        },
      ),
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
