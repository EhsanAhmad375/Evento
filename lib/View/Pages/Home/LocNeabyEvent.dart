import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class LocNeabyEvent extends StatelessWidget {
  dynamic data;
  LocNeabyEvent({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: media.width,
          height: media.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/near/map.png'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                elevation: 20,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Container(
                  height: media.height * 0.15,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(Icons.arrow_back)),
                            SizedBox(
                              width: media.width * 0.02,
                            ),
                            Text(
                              'Nearby Events',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Icon(Icons.menu),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.selectTime, arguments: {
                    'image': '${data['image']}',
                    'title': '${data['title']}',
                    'dateTime': '${data['dateTime']}',
                    'amount': '${data['amount']}',
                    'loc': '${data['loc']}',
                  });
                },
                child: Container(
                  height: media.height * 0.2,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: media.height * 0.14,
                        width: media.width * 0.3,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('${data['image']}'),
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
                              SizedBox(
                                height: media.height * 0.015,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.width_full_sharp,
                                    color: AppColors.blue,
                                  ),
                                  Text('${data['dateTime']}'),
                                ],
                              ),
                              Text(
                                '${data['title']}',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${data['loc']}',
                                    style: TextStyle(color: AppColors.grey),
                                  ),
                                  Text(
                                    data['amount'] == '0'
                                        ? 'FREE'
                                        : '\$${data['amount']}',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
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
            
            
              ),
            ],
          ),
        ),
      ),
    );
  }
}
