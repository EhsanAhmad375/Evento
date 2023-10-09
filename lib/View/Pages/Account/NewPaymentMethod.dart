import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';

class NewPaymentMethod extends StatelessWidget {
  const NewPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, AppColors.backPink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Column(
          children: [
            AppbarCustom(media: media,title: 'New Payment Method',),
            SizedBox(height: media.height*0.04,),
            Expanded(
              child: Container(
                width: media.width,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                     Column(children: [
                      SizedBox(height: media.height*0.05,),
                      TextFeildCustom(prefix: false,hint: 'User Name',),
                      SizedBox(height: media.height*0.03,),
                      TextFeildCustom(prefix: false,hint: 'Card Number',),
                      SizedBox(height: media.height*0.03,),
                      Row(
                        children: [
                          Expanded(child: TextFeildCustom(prefix: false,hint: 'EXP Date',)),
                          SizedBox(width: media.width*0.05,),
                          Expanded(child: TextFeildCustom(prefix: false,hint: 'CVV',)),
                        ],
                      ),
               
                     ],),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 20),
                       child: RoundButtonCustom(title: 'Add Card',),
                     ),
                   ],
                 ),
               )
              ),
            )
          ],
        ),
      ),
    );
  }
}