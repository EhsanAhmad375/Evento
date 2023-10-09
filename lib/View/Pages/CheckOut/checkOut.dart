import 'package:flutter/material.dart';
import '../../../Widget/TextFeildCustom.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:get/get_navigation/get_navigation.dart';


class CheckOut extends StatelessWidget {
  dynamic data;
  CheckOut({Key? key, this.data}) : super(key: key); // Fix 1

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backPink,
      body: Container(
        decoration: BoxDecoration(
            gradient:LinearGradient(colors: [
          AppColors.white,
          AppColors.backPink,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        ),
                ),
        child: Column(
          children: [
            AppbarCustom(
              media: media,
              title: 'Review Order',
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Expanded(
              child: Container(
                width: media.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: media.height * 0.2,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: media.height * 0.14,
                              width: media.width * 0.3,
                              decoration: BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('${data['image']}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: media.height * 0.015,
                                    ),
                                    Text(
                                      '${data['title']}',
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: media.height * 0.015,
                                    ),
                                    Text(
                                      '${data['loc']}',
                                      style: TextStyle(color: AppColors.grey),
                                    ),
                                    Text(
                                      '${data['dateTime']}',
                                      style: TextStyle(color: AppColors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      Divider(),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Text(
                        'Ticket Type',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Regular',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: media.width * 0.02,
                              ),
                              Text(
                                '\$10',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blue),
                              ),
                            ],
                          ),
                          Text(
                            'x 2',
                            style: TextStyle(color: AppColors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Premium',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: media.width * 0.02,
                              ),
                              Text(
                                '\$20',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blue,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'x 1',
                            style: TextStyle(color: AppColors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Divider(),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Text(
                        'Payment Method',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      ListTile(
                        onTap: (){
                          Get.toNamed(RouteName.paymentMethod);
                        },
                        leading: Container(
                          height: media.height*0.08,
                          width: media.width*0.15,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Icon(Icons.payment_outlined,color: AppColors.blue,
                          size: 30,
                          ),
                        ),
                        title: Text('HSBC Bank',style: TextStyle(
                          color: AppColors.blue,fontSize: 16,fontWeight: FontWeight.w500,
                        ),),
                        subtitle: Text('**** *****4531'),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                       SizedBox(
                        height: media.height * 0.01,
                      ),
                      Divider(),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Order Detail',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),),
                        Text('Apply Code',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.styBlueDark
                        ),
                        ),
                      ],),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Ticket',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greylite
                        ),),
                        Text('\$35',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          
                        ),
                        ),
                      ],),
                        SizedBox(
                        height: media.height * 0.01,
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Discount',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greylite
                        ),),
                        Text('-\$5',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.orangeDark
                          
                        ),
                        ),
                      ],),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Total',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greylite
                        ),),
                        Text('\$30',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blue
                          
                        ),
                        ),
                      ],),
                        SizedBox(
                        height: media.height * 0.015,
                      ),
      
                    RoundButtonCustom(title: 'Buy Ticket',isVisible: true,onTap: (){
                        showBottomSheetMethod(context,media);
                    },)
      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void showBottomSheetMethod(BuildContext context,Size media) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:  Radius.circular(20))),
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: media.height*0.021,),
                Text(
                  'Have a Voucher Code?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkBlue
                  ),
                ),
                SizedBox(height: media.height*0.02),
               
               
                
                
                TextFeildCustom(hint: "Enter your voucher code",prefixIcon: Icons.code,),
                SizedBox(height: media.height*0.02),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25),
                   child: Container(
                    height: media.height*0.05,
                    width: media.width,
                    decoration: BoxDecoration(
                      color: AppColors.styBlue,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.width_full_sharp,color: Color(0xffFFD7D5),),
                          Text('New Year Promo up To 20%'),
                        ],
                      ),
                    ),
                             ),
                 ),
                SizedBox(height: media.height*0.02),
                RoundButtonCustom(title: 'ApplyCode',onTap: (){
                  Get.toNamed(RouteName.orderComplete);
                },),
                 SizedBox(height: media.height*0.02,)
              ],
            ),
          ),
        ),
      );
    },
  );
}

}
