import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import '../../../../Controller/CheckOutController.dart';
import 'package:event_booking/Controller/MyController.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';

class ChooseMethod extends StatelessWidget {
  const ChooseMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.white,
            AppColors.backPink,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            AppbarCustom(
              media: media,
              title: 'Forget Password',
            ),
            Expanded(
                child: Container(
              width: media.width,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: GetBuilder<MyController>(
                  init: MyController(),
                  builder: (controller) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: media.height * 0.06,
                                ),
                                Text(
                                  "Don't worry,it's only a few steps",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.darkBlue),
                                ),
                                SizedBox(
                                  height: media.height * 0.06,
                                ),
                                Text(
                                    'Choose a method below to recover your password',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                                SizedBox(
                                  height: media.height * 0.08,
                                ),
                                GetBuilder<MyController>(
                                    init: MyController(),
                                    builder: (myController) {
                                      return Container(
                                        height: media.height * 0.32,
                                        width: media.width,
                                        child: ListView.builder(
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Obx(
                                                () => Container(
                                                  height: media.height * 0.1,
                                                  width: media.width,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                      color: myController
                                                                  .select
                                                                  .value ==
                                                              index
                                                          ? AppColors.styBlue
                                                          : AppColors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: RadioListTile(
                                                    value: index,
                                                    groupValue:
                                                        myController
                                                            .select.value,
                                                    onChanged: (val) {
                                                      myController
                                                          .select.value = index;
                                                    },
                                                    title: Text(
                                                      '${myController.ViaTitle[index]}',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 18),
                                                    ),
                                                    subtitle: Text(
                                                      '${myController.ViaSub[index]}',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: RoundButtonCustom(
                              title: 'Next',
                              onTap: () {
                                Get.toNamed(RouteName.enteremail);
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
