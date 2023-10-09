import 'package:get/get.dart';
import '../../Common/AppColor.dart';
import 'package:flutter/material.dart';
import '../../Controller/HomeController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Home_BestForYou_List extends StatelessWidget {
  
  const Home_BestForYou_List({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
  final media=MediaQuery.of(context).size;
    return Container(
      height: media.height * 0.30,
      width: media.height,
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (homeController) {
          return ListView.builder(
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
    );
  
  }
}
