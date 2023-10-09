import '../Model/TicketModel.dart';
import 'package:flutter/material.dart';
import '../Widget/Tickets/Post_Ticket.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:event_booking/Widget/Tickets/Upcomming.dart';
import 'package:get/get_state_manager/get_state_manager.dart';



class TicketController extends GetxController{
  RxInt myindex=0.obs;
  RxList<TicketModel> ticketsType=<TicketModel>[
    TicketModel(title: 'Upcomming',classes: UpcommingTickets()),
    TicketModel(title: 'Post Ticket',classes: Expanded(child: Container(
      color: AppColors.favorite,
      width: 200
    ))),
  ].obs;

  RxList<Widget> ticketClasses=<Widget>[
    UpcommingTickets(),
    PostTickets()
  ].obs;

}