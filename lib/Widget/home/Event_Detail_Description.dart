import '../RoundButton.dart';
import '../../Common/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:get/get_navigation/get_navigation.dart';


class EventDetail_Description extends StatelessWidget {
  const EventDetail_Description({
    super.key,
    required this.media,
    required this.data,
  });

  final Size media;
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            
            gradient:LinearGradient(colors: [
          AppColors.white,
          AppColors.backPink,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        
                ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        width: media.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                
                children: [
                  Container(
                    height: media.height * 0.1,
                    width: media.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, right: 20, left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Start from',
                                style: TextStyle(color: AppColors.grey),
                              ),
                              Text(
                                'Participants',
                                style: TextStyle(color: AppColors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: media.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$${data['amount']}',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: AppColors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: media.height * 0.04,
                                width: media.width * 0.3,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 10,
                                      child: Container(
                                        height: media.height * 0.04,
                                        width: media.width * 0.08,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/kuri.png')),
                                            border: Border.all(
                                                width: 2,
                                                color: AppColors.white),
                                            color: AppColors.blue,
                                            borderRadius:
                                                BorderRadius.circular(
                                                    20)),
                                      ),
                                    ),
                                    Positioned(
                                      left: 35,
                                      child: Container(
                                        height: media.height * 0.04,
                                        width: media.width * 0.08,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/kuri.png')),
                                            border: Border.all(
                                                width: 2,
                                                color: AppColors.white),
                                            color: AppColors.styBlue,
                                            borderRadius:
                                                BorderRadius.circular(
                                                    20)),
                                      ),
                                    ),
                                    Positioned(
                                      right: 30,
                                      child: Container(
                                        height: media.height * 0.04,
                                        width: media.width * 0.08,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/kuri.png')),
                                            border: Border.all(
                                                width: 2,
                                                color: AppColors.white),
                                            color: AppColors.blue,
                                            borderRadius:
                                                BorderRadius.circular(
                                                    20)),
                                      ),
                                    ),
                                    Positioned(
                                      right: 5,
                                      child: Container(
                                        height: media.height * 0.04,
                                        width: media.width * 0.08,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2,
                                                color: AppColors.white),
                                            color: AppColors.styBlue,
                                            borderRadius:
                                                BorderRadius.circular(
                                                    20)),
                                        child: Center(
                                          child: Text(
                                            '1.5k',
                                            style:
                                                TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      title: Text('${data['country']}'),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.blue,
                          ),
                          Text('${data['loc']}'),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Icon(
                            Icons.star_border,
                            color: AppColors.blue,
                          ),
                          Text('${data['event']}'),
                        ],
                      ),
                      trailing: Container(
                        height: media.height * 0.05,
                        width: media.width * 0.3,
                        decoration: BoxDecoration(
                            color: AppColors.styBlue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text('Follow')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ReadMoreText(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed ',
                      trimLines: 3,
                      textAlign: TextAlign.justify,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: '  Less show',
                      trimMode: TrimMode.Line,
                      style: TextStyle(fontSize: 15),
                      moreStyle: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.bold),
                      lessStyle: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [Row(
                children: [
                  SizedBox(width: media.width*0.02,),
                  GestureDetector(
                    onTap: (){
                      // Get.toNamed(RouteName.)
                    },
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteName.contectOrganizer);
                      },
                      child: Container(
                        height: media.height*0.08,
                        width: media.width*0.17,
                        decoration: BoxDecoration(
                          color: AppColors.styBlue,
                          borderRadius: BorderRadius.circular(50)),
                          child: Center(child: Icon(Icons.message_sharp,color: AppColors.blue,)),
                      ),
                    ),
                  ),
                  SizedBox(width: media.width*0.02,),
                  Expanded(child: RoundButtonCustom(title:data['amount']!='FREE'? 'Buy Ticket':'Join Event',)),
                  SizedBox(width: media.width*0.02,),
                ],
              )],
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
