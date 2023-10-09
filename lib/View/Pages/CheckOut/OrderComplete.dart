import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../Widget/SquareAppBarCustom.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';

class OrderComplete extends StatelessWidget {
  OrderComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backPink,
      body: Container(
        height: media.height,
        decoration: BoxDecoration(
            gradient:LinearGradient(colors: [
          AppColors.white,
          AppColors.backPink,
          AppColors.backPink,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        ),
                ),
        child: Column(
          children: [
           SquareAppBar(media: media,title: 'Complete Order',backArrow: false,iconImage: 'assets/home/orderC.png',),
           Expanded(
             child: Container(
              width: media.width,
              decoration: BoxDecoration(
                
                color: AppColors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(children: [
                        
                        Text('Your Ticket Purchase Has Been Successfully',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.darkBlue
                        ),
                        ),
                        SizedBox(height: media.height*0.06,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text('''Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quasvel''',
                          textAlign: TextAlign.center,
                        ),
                        )
                      ]),
                    ),
                    RoundButtonCustom(title: 'My Ticket',onTap: (){
                      Get.toNamed(RouteName.persistance_bottom_Nav_bar);
                    },)
                  ],
                ),
              ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
