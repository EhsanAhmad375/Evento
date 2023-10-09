import 'package:get/get.dart';
import '../../Common/AppColor.dart';
import '../../Utility/RouteName.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Controller/NearbyController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class NearbyEvents extends StatelessWidget {
  const NearbyEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return GetBuilder<NearbyConroller>(
      // Correct the controller name here
      init: NearbyConroller(),
      builder: (nearbyController) {
        return Container(
          // Remove the Expanded widget here
          child: ListView.builder(
            itemCount: nearbyController.nearbyList.length - 1,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.locationNeabyEvent, arguments: {
                    'image': '${nearbyController.nearbyList[index].Image}',
                    'title': '${nearbyController.nearbyList[index].title}',
                    'dateTime':
                        '${nearbyController.nearbyList[index].dateTime}',
                    'amount': '${nearbyController.nearbyList[index].amount}',
                    'loc': '${nearbyController.nearbyList[index].loc}',
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  height: media.height * 0.2,
                  width: media.width,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: media.height * 0.13,
                        width: media.width * 0.25,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${nearbyController.nearbyList[index].Image}'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: media.width * 0.6,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.width_full_sharp,
                                        color: AppColors.blue,
                                      ),
                                      Text(
                                          '${nearbyController.nearbyList[index].dateTime}'),
                                    ],
                                  ),
                                  Obx(
                                    () => GestureDetector(
                                        onTap: () {
                                          nearbyController
                                              .isNeabyFavoriteState(index);
                                        },
                                        child: nearbyController
                                                .isNearbyFavorite(index)
                                            ? Icon(
                                                Icons.favorite,
                                                color: AppColors.favorite,
                                              )
                                            : Icon(
                                                Icons.favorite_border,
                                                color: AppColors.blue,
                                              )),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: media.height * 0.015,
                              ),
                              Text(
                                '${nearbyController.nearbyList[index].title}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: media.height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${nearbyController.nearbyList[index].loc}',
                                    style: TextStyle(color: AppColors.grey),
                                  ),
                                  Text(
                                    nearbyController.nearbyList[index].amount ==
                                            0
                                        ? 'FREE'
                                        : '\$${nearbyController.nearbyList[index].amount}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blue),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
