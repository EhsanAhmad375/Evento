import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../Utility/RouteName.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/CheckOutController.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backPink,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AppbarCustom(
              media: media,
              title: 'Payment Method',
            ),
            GetBuilder<CheckOutController>(
                init: CheckOutController(),
                builder: (checkOutController) {
                  return Expanded(
                    child: Container(
                      child: ListView.builder(
                          itemCount: checkOutController.checkOutList.length,
                          itemBuilder: (context, index) {
                            
                            return Obx(
                              () => Container(
                                height: media.height * 0.1,
                                width: media.width,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color:
                                        checkOutController.select.value == index
                                            ? AppColors.styBlue
                                            : AppColors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: RadioListTile(
                                  value: index,
                                  groupValue: checkOutController.select.value,
                                  onChanged: (val) {
                                    checkOutController.select.value = index;
                                  },
                                  title: Text(
                                    '${checkOutController.checkOutList[index].paumentMethod}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500,
                                        
                                        fontSize: 18),
                                  ),
                                  subtitle: Text(
                                      '${checkOutController.checkOutList[index].cardNumber}', style:
                                        TextStyle(fontWeight: FontWeight.w300,
                                        
                                        fontSize: 16),),
                                      
                                ),
                              ),
                            );
                          }),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
