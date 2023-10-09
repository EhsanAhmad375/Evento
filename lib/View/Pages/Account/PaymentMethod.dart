import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/AccountController.dart';

class paymentMethodAccount extends StatelessWidget {
  const paymentMethodAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
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
            AppbarCustom(
              media: media,
              title: 'Payment Method',
            ),
            GetBuilder<AccountController>(
                init: AccountController(),
                builder: (accountController) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: accountController.paymentMethodList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                            child: Container(
                              height: media.height * 0.1,
                              width: media.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.white),
                              child: Center(
                                child: ListTile(
                                  onTap: (){
                                    _showBottomSheet(context, media);
                                  },
                                  leading: Container(
                                    height: media.height * 0.07,
                                    width: media.width * 0.15,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                '${accountController.paymentMethodList[index].image}'),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text(
                                      '${accountController.paymentMethodList[index].title}'),
                                  subtitle: Text(
                                      '${accountController.paymentMethodList[index].subtitle}'),
                                  trailing: Icon(Icons.edit),
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                })
       
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context,Size media){
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: media.height*0.55,
          width: media.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: media.height*0.05,),
           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Text('New Method',
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
             ),
             ),
           ),
              SizedBox(height: media.height*0.05,),
                GetBuilder<AccountController>(
                init: AccountController(),
                builder: (accountController) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: accountController.NewMethodList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                            child: Container(
                              height: media.height * 0.07,
                              width: media.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                 ),
                              child: Center(
                                child: ListTile(
                                  onTap: (){
                                    Get.toNamed(RouteName.newPaymentMethod);
                                  },
                                  leading: Container(
                                    height: media.height * 0.045,
                                    width: media.width * 0.09,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                '${accountController.NewMethodList[index].image}'),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text(
                                      '${accountController.NewMethodList[index].title}'),
                                 
                                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                })
       
           
            ],
          ),
        );
      },
    );
  }
}
