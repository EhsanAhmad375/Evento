import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/HomeController.dart';

class TicketDetail extends StatelessWidget {
  dynamic data;
  TicketDetail({super.key, required dynamic data});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
              title: 'Ticket Details',
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            GetBuilder<HomeController>(
                init: HomeController(),
                builder: (homeController) {
                  return Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 11),
                      width: media.width,
                      child: ListView.builder(
                          itemCount: 1,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              height: media.height * 0.64,
                              width: media.width,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: media.height * 0.01,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
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
                                            padding: const EdgeInsets.only(left: 7),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${homeController.bestForYou[index].title}',
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    SizedBox(width: Get.width*0.02,),
                                                    Icon(
                                                  Icons
                                                      .arrow_downward_sharp,
                                                  size: 24,
                                                ),
                                                  ],
                                                ),
                                                
                                                SizedBox(
                                                  height: media.height * 0.02,
                                                ),
                                                Text(
                                                  '${homeController.bestForYou[index].loc}',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: AppColors.grey,
                                                  ),
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
                                      dashWidth: 10,
                                      dashColor: AppColors.grey,
                                      width: media.width,
                                      axis: Axis.horizontal,
                                      dashSpace: 12,
                                    ),
                                    SizedBox(
                                      height: media.height * 0.04,
                                    ),
                                    Text(
                                      'Place',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Text(
                                      '${homeController.bestForYou[index].loc} Galary 2, Stage 1',
                                      style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Order ID ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          'Name',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '#43483473',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.grey),
                                        ),
                                        Text(
                                          'Danil Recardo',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.grey),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Date ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          'Time',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Dec,12,2023',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.grey),
                                        ),
                                        Text(
                                          '08:00AM',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.grey),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Seat ',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          'Section',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '533',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.grey),
                                        ),
                                        Text(
                                          '4A',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: AppColors.grey),
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                    SizedBox(
                                      height: media.height * 0.03,
                                    ),
                                    DottedDashedLine(
                                      height: 0,
                                      dashWidth: 10,
                                      dashColor: AppColors.grey,
                                      width: media.width,
                                      axis: Axis.horizontal,
                                      dashSpace: 12,
                                    ),
                                    SizedBox(
                                      height: media.height * 0.02,
                                    ),
                                    Center(
                                        child: Image.asset(
                                            'assets/fav/Barcode.png')),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  );
                }),
            SizedBox(
              height: media.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showRoundedBottomSheet(context,media);
                    },
                    child: Container(
                      height: media.height * 0.08,
                      width: media.width * 0.15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.orangeDark),
                      child: Icon(
                        Icons.delete,
                        color: AppColors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: media.width * 0.02,
                  ),
                  Expanded(
                      child: RoundButtonCustom(
                        onTap: (){
                          Get.toNamed(RouteName.directions);
                        },
                    title: 'Direction',
                  )),
                ],
              ),
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  void _showRoundedBottomSheet(BuildContext context,Size media) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
      builder: (context) {
        return Container(
          // Add your content here
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: media.height*0.024),
              Text(
                'Do You Want to Cancel Your Ticket and Get a Refund?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: media.height*0.04),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu dapibus.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: media.height*0.03),
              Row(children: [
                Expanded(child: Container(
                  height: media.height*0.07,
                  decoration: BoxDecoration(
                    color: AppColors.orangeDark,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(child: Text('Cancel Ticket',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  )),
                )),
             SizedBox(width: media.width*0.02,),
                Expanded(child: Container(
                  height: media.height*0.07,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(child: Text('Close',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  )),
                ))
             
             
              ],),
              SizedBox(height: media.height*0.024),
            ],
          ),
        );
      },
    );
  }
}
