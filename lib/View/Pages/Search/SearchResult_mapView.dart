import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SearchResult_MapView extends StatelessWidget {
  dynamic data;
  SearchResult_MapView({super.key, this.data});

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
                    elevation: 10.0,
                    child: Container(
                      height: media.height*0.17,
                      width: media.width,
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Get.back();
                                  },
                                  child: Icon(Icons.arrow_back)),
                                  SizedBox(width: media.width*0.02,),
                                Text('"${data['search']}"',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.menu),
                                SizedBox(width: media.width*0.02,),
                            Image.asset('assets/home/menu.png'),
                              ],
                            ),
                            
                          ],
                        ),
                      ))),
                  ),
              
            Container(
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
                                  Text('${data['date']}'),
                                ],
                              ),
                              Text(
                                '${data['title']}',
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 20,
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
                                            data['amount']!=
                                                    'FREE'
                                                ? '\$${data['amount']}'
                                                : 'FREE',
                                            style:
                                                TextStyle(color: AppColors.blue),
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
            



            ],
          ),
        ),
      ),
    );
  }
}
