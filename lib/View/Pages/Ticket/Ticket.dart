import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../Widget/Tickets/Upcomming.dart';
import '../../../Controller/TicketController.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';

class Ticket extends StatelessWidget {
  Ticket({Key? key}) : super(key: key);
  RxInt little = 0.obs;
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
        child: GetBuilder<TicketController>(
          init: TicketController(),
          builder: (ticketController) {
            return Column(
              children: [
                // Custom app bar
                AppbarCustom(
                  media: media,
                  title: 'Ticket',
                  backArrow: false,
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                // Horizontal list of ticket types
                Container(
                  height: media.height * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:  ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: ticketController.ticketsType.length,
                        itemBuilder: (context, index) {
                          return Obx(
                            () => GestureDetector(
                              onTap: () {
                                ticketController.myindex.value = index;
                               
                                print(ticketController.myindex.value);
                               
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 9),
                                width: media.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: ticketController.myindex.value == index
                                      ? AppColors.blue
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    '${ticketController.ticketsType[index].title}',
                                    style: TextStyle(
                                      color: ticketController.myindex.value == index
                                          ? AppColors.white
                                          : AppColors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        
                      
                    },
                  ),
                ),
                Expanded(
                  child: Obx(
                    ()=> Container(
                      child: ticketController.ticketClasses[ticketController.myindex.value],
                    ),
                  )
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
