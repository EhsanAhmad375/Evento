import 'package:get/get.dart';
import '../Model/CheckOutModel.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CheckOutController extends GetxController{
  RxInt select=0.obs;
  RxInt ticketsCount=0.obs;
  RxList<ChekOutModel> checkOutList=<ChekOutModel>[
    ChekOutModel(daySession: 'Modnday,Session 1',dateTime: '23 jan 2022,8-10am',typeTickets: 'Regular',remainingTickets: '1400',paumentMethod: 'HSBS Bank',cardNumber: '**** ******** 5631',amount: 10),
    ChekOutModel(daySession: 'Modnday,Session 2',dateTime: '23 jan 2022,8-10am',typeTickets: 'Premium',remainingTickets: '190',paumentMethod: 'Master Card',cardNumber: '**** ******** 5631',amount: 25),
    ChekOutModel(daySession: 'Tuesday,Session 1',dateTime: '24 jan 2022,8-10am',typeTickets: 'VIP',remainingTickets: '0',paumentMethod: 'PayPal',cardNumber: '********@gmail.com',amount: 50),
    ChekOutModel(daySession: 'Tuesday,Session 2',dateTime: '24 jan 2022,8-10am',typeTickets: 'Faculty',remainingTickets: '0',paumentMethod: 'Debit Card',cardNumber: '**** ******** 5631',amount: 70),
  ].obs;
void increment(int index) {
   ticketsCount.value = ticketsCount.value + 1;
  }

  
  void decrement() {
    ticketsCount.value = ticketsCount.value - 1;
  }
}