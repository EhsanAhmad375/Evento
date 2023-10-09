import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Controller/HomeController.dart';

class Direction extends StatelessWidget {
  Direction({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      
      child: Scaffold(
      
      backgroundColor: AppColors.styBlue,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/home/loc.png'),fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                elevation: 10.0,
                child: Container(
                    height: media.height * 0.14,
                    width: media.width,
                    child: Center(
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
                                '"Art Exhibition"',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Container(
                              height: media.height * 0.03,
                              // width: ,
                              decoration: BoxDecoration(
                                  color: AppColors.backPink,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    'distance:1,4km',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ))),
              ),
              Container(
                  height: media.height * 0.25,
                  width: media.width,
                  
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(height: media.height*0.01,),
                      ListTile(
                        leading: Container(
                          height: media.height * 0.06,
                          width: media.width * 0.12,
                          decoration: BoxDecoration(
                            color: AppColors.styBlue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.subdirectory_arrow_left),
                        ),
                        title: Text(
                          'Deadwood Street',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blue),
                        ),
                        trailing: Icon(
                          Icons.car_rental,
                          size: 35,
                        ),
                      ),
                      // SizedBox(height: media.height*0.02,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.backPink,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                          ),
                          child: GetBuilder<HomeController>(
                              init: HomeController(),
                              builder: (homeController) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: ListView.builder(
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: media.width,
                                          
                                          child: Row(children: [
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: media.height * 0.015,
                                                ),
                                                Container(
                                                  height: media.height * 0.13,
                                                  width: media.width * 0.3,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                      color: AppColors.white,
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                            '${homeController.trendingList[index].image}',
                                                          ),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Flexible(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('${homeController.trendingList[index].title}',style: TextStyle(
                                                      fontSize: 18,fontWeight: FontWeight.w500
                                                    ),),
                                                    SizedBox(width: media.width*0.05,),
                                                    Text('19:00 AM',style: TextStyle(
                                                      fontWeight:FontWeight.w300,
                                                      fontSize: 12,
                                                      color: AppColors.grey
                                                    ),),
                                                    SizedBox(height: media.height*0.01,),
                                                      Text('${homeController.trendingList[index].loc}',style: TextStyle(
                                                          fontSize: 14,fontWeight: FontWeight.w300,
                                                          
                                                        ),),
                                                        SizedBox(height: media.height*0.01,),
                                                        Text('2527 Lakewood Drive, Newyork',style: TextStyle(
                                                          fontWeight:FontWeight.w300,
                                                          fontSize: 15,
                                                          color: AppColors.grey
                                                        ),)
                                                  ],
                                                ),
                                              ),
                                            )
                                          ]),
                                        );
                                      }),
                                );
                              }),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
