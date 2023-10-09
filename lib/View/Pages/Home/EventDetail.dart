import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../Widget/home/Event_Detail_Description.dart';


class EventDetails extends StatelessWidget {
  dynamic data;
  EventDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: media.height * 0.5,
            width: media.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('${data['image']}'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: media.height * 0.06,
                          width: media.height * 0.06,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Icon(Icons.arrow_back_sharp)),
                        ),
                      ),
                      Container(
                        height: media.height * 0.06,
                        width: media.height * 0.06,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Icon(
                          Icons.favorite,
                          color: AppColors.favorite,
                        )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${data['title']}',
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.width_full_sharp,
                            color: AppColors.white,
                          ),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Text(
                            '${data['date']}',
                            style: TextStyle(color: AppColors.white),
                          ),
                          SizedBox(
                            width: media.width * 0.03,
                          ),
                          Icon(
                            Icons.location_on,
                            color: AppColors.white,
                          ),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Text(
                            '${data['loc']}',
                            style: TextStyle(color: AppColors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          EventDetail_Description(media: media, data: data),
        ],
      ),
    );
  }
}

