import 'package:get/get.dart';
import '../../Common/AppColor.dart';
import 'package:flutter/material.dart';
import '../../Controller/HomeController.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class PostTickets extends StatelessWidget {
  
  const PostTickets({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
    final  media=MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (homeController) {
              return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          RouteName.ticketDetail,
                          arguments: {
                            'image': homeController.bestForYou[index].image,
                            'amount': homeController.bestForYou[index].amount,
                            'loc': homeController.bestForYou[index].loc,
                            'date': homeController.bestForYou[index].date,
                            'title': homeController.bestForYou[index].title,
                            'type':
                                homeController.bestForYou[index].ticketsType,
                          },
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: media.height * 0.3,
                        width: media.width,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: media.height * 0.1,
                                      width: media.width * 0.2,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                '${homeController.bestForYou[index].image}')),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
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
                                            height: media.height * 0.02,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                  Icons
                                                      .wallet_giftcard_outlined,
                                                  color: AppColors.blue,
                                                  size: 18),
                                              Text(
                                                '${homeController.bestForYou[index].date}',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: AppColors.blue,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              DottedDashedLine(
                                height: 0,
                                width: media.width,
                                axis: Axis.horizontal,
                                dashSpace: 7,
                              ),
                              SizedBox(
                                height: media.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Ticket Type'),
                                  Text('Date'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      '${homeController.bestForYou[index].ticketsType}'),
                                  Text(
                                      '${homeController.bestForYou[index].date}'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
