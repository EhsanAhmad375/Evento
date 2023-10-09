import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import '../../../Widget/RoundButton.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/AccountController.dart';

class Language extends StatelessWidget {
  const Language({super.key});

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
              title: 'Language',
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                width: media.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetBuilder<AccountController>(
                        init: AccountController(),
                        builder: (accountController) {
                          return Expanded(
                              child: ListView.builder(
                                  itemCount:
                                      accountController.languageList.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: media.height * 0.06,
                                      child: Obx(
                                        ()=> ListTile(
                                          onTap: (){
                                            accountController.myIndex.value=index;
                                          },
                                          leading: Image.asset(
                                            "${accountController.languageList[index].image}",
                                            height: 25,
                                          ),
                                          title: Text(
                                            '${accountController.languageList[index].countryName}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          trailing: accountController.myIndex.value==index?Icon(Icons.check,color: AppColors.blue,):Icon(Icons.check,color: AppColors.white,),
                                        ),
                                      ),
                                    );
                                  }));
                        }),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: RoundButtonCustom(
                        title: 'Save',
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
