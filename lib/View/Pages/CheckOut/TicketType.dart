import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import '../../../Widget/RoundButton.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Widget/AppbarCustomSmall.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../Controller/CheckOutController.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TicketType extends StatelessWidget {
  dynamic data;
   TicketType({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backPink,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AppbarCustom(
                media: media,
                title: 'Select Ticket Tpye',
              ),
              GetBuilder<CheckOutController>(
                  init: CheckOutController(),
                  builder: (checkOutController) {
                    return Expanded(
                      child: Container(
                        child: ListView.builder(
                            itemCount: checkOutController.checkOutList.length,
                            itemBuilder: (context, index) {
                              return Obx(
                                () => Container(
                                  height: media.height * 0.1,
                                  width: media.width,
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: ListTile(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${checkOutController.checkOutList[index].typeTickets}',
                                          style: TextStyle(
                                            fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '\$${checkOutController.checkOutList[index].amount}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.blue),
                                        ),
                                      ],
                                    ),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        checkOutController.checkOutList[index]
                                                    .remainingTickets !=
                                                '0'
                                            ? Text(
                                                '${checkOutController.checkOutList[index].remainingTickets} left')
                                            : Container(
                                                child: Text('Sold'),
                                              ),
                                        Row(
                                          children: [
                                            Container(
                                              height: media.height * 0.03,
                                              width: media.width * 0.06,
                                              decoration: BoxDecoration(
                                                  color: AppColors.darkBlue,
                                                  shape: BoxShape.circle),
                                              child: Center(
                                                  child: Icon(
                                                Icons.remove,
                                                size: 17,
                                                color: AppColors.white,
                                              )),
                                            ),
                                            SizedBox(
                                              width: media.width * 0.02,
                                            ),
                                            Obx(
                                              ()=> Text(
                                                  '${checkOutController.ticketsCount}'),
                                            ),
                                            SizedBox(
                                              width: media.width * 0.02,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: media.height * 0.03,
                                                width: media.width * 0.06,
                                                decoration: BoxDecoration(
                                                    color: AppColors.darkBlue,
                                                    shape: BoxShape.circle),
                                                child: Center(
                                                    child: Icon(
                                                  Icons.add,
                                                  size: 17,
                                                  color: AppColors.white,
                                                )),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    );
                  }),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: RoundButtonCustom(
                      title: 'Next',
                      onTap: () {
                        Get.toNamed(RouteName.checkOut,
                        arguments: {
                            'image':'${data['image']}',
                            'title':'${data['title']}',
                            'dateTime':'${data['dateTime']}',
                            'amount':'${data['amount']}',
                            'loc':'${data['loc']}',
                          }
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
