import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/HomeController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ContectOrganizer extends StatelessWidget {
  ContectOrganizer({super.key});
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('HH:mm').format(now);
    return Scaffold(
      
      body: Container(
                                  
decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, AppColors.backPink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (homeController) {
            return Column(
              children: [
                AppbarCustom(
                  media: media,
                  title: 'Contect Organizer',
                ),
                SizedBox(height: media.height * 0.02),
                Expanded(
                  child: Container(
                    width: media.width,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListView.builder(
                      itemCount: homeController.messageList.length,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment:
                                homeController.messageList[index].length % 2 == 0
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.end,
                            children: [
                              Obx(() => Container(
                                  decoration: BoxDecoration(
                                      color: homeController
                                                      .messageList[index].length %
                                                  2 ==
                                              0
                                          ? AppColors.grey
                                          : AppColors.blue,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 13),
                                    child: Text(
                                      '${homeController.messageList[index]}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: homeController.messageList[index]
                                                        .length %
                                                    2 ==
                                                0
                                            ? AppColors.black
                                            : AppColors.white,
                                      ),
                                    ),
                                  ))),
                              Text('${formattedTime}')
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  color: AppColors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextFeildCustom(
                      textEditingController: messageController,
                      hint: 'Write message',
                      prefixIcon: Icons.message,
                      sufixIcon: Icons.send,
                      onTap: () {
                        if (messageController.text != '') {
                          homeController.messageList
                              .add(messageController.text.toString());
                          messageController.clear();
                          homeController.update();
                        }
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
