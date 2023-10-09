import 'package:flutter/material.dart';
import '../../../Widget/TabbarCustom.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/NearbyController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:event_booking/Controller/favoriteController.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Favorite extends StatelessWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, Color(0xffFFD7D5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: GetBuilder<NearbyConroller>(
          init: NearbyConroller(),
          builder: (nearbyConroller) {
            return Column(
              children: [
                AppbarCustom(
                  media: media,
                  backArrow: false,
                  title: 'Favorite',
                  isSufix: true,
                  sufix: Image.asset(
                    'assets/home/menu.png',
                  ),
                ),
                    Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: media.height * 0.08,
                    width: media.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              nearbyConroller.current.value = index;
                            },
                            child: Obx(
                              () => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: media.height * 0.04,
                                    width: media.width * 0.4,
                                    decoration: BoxDecoration(
                                        color:
                                            nearbyConroller.current == index
                                                ? AppColors.blue
                                                : AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                        child: Text(
                                      '${nearbyConroller.items[index]}',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            nearbyConroller.current == index
                                                ? AppColors.white
                                                : AppColors.grey,
                                      ),
                                    ))),
                              ),
                            ),
                          );
                        }),
                  ),
                  Expanded(
                    child: Obx(
                      () => Container(
                        width: media.width,
                        child: nearbyConroller
                            .Tabbar[nearbyConroller.current.value],
                      ),
                    ),
                  )
        
        
          
              ],
            );
          }
        ),
      ),
    );
  }
}
