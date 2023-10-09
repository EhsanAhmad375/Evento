import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Controller/AccountController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
              SizedBox(
                height: media.height * 0.03,
              ),
              ListTile(
                leading: Container(
                  height: media.height * 0.08,
                  width: media.width * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/home/Profile.png'))),
                ),
                title: Text(
                  'Danial Recadro',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  'danialcardo@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: GestureDetector(
                  onTap: (){
                    _showBottomSheet(context,media);
                  },
                  child: Icon(
                    Icons.logout_outlined,
                    color: AppColors.orangeDark,
                  ),
                ),
              ),
              SizedBox(
                height: media.height * 0.02,
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GetBuilder<AccountController>(
                        init: AccountController(),
                        builder: (accountController) {
                          return ListView.builder(
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Container(
                                    height: media.height * 0.08,
                                    width: media.width,
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: ListTile(
                                        onTap: () {
                                          Get.toNamed(accountController
                                              .accountList[index].clssss);
                                        },
                                        leading: Container(
                                            height: media.height * 0.064,
                                            width: media.width * 0.14,
                                            decoration: BoxDecoration(
                                                color: AppColors.styBlue,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Icon(
                                              accountController
                                                  .accountList[index]
                                                  .leadingIcons,
                                              color: AppColors.iconBlueColor,
                                              size: 27,
                                            )),
                                        title: Text(
                                          '${accountController.accountList[index].title}',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        trailing: Icon(
                                          accountController
                                              .accountList[index].trailingIcons,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }),
                  ),
                ),
              )
            ],
          ),
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
          height: media.height*0.35,
          child: Column(
            children: [
              SizedBox(height: media.height*0.05,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text('Are You Sure You Want to Logout?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ),
                  SizedBox(height: media.height*0.04),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Expanded(child: Container(
                    height: media.height*0.07,
                    decoration: BoxDecoration(
                      color: AppColors.orangeDark,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(child: Text('Yes,Logout',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                    )),
                  )),
                           SizedBox(width: media.width*0.02,),
                  Expanded(child: Container(
                    height: media.height*0.07,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(child: Text('Close',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                    )),
                  ))
                           
                           
                ],),
              ),
              SizedBox(height: media.height*0.1 ),
          
            ],
          ),
        );
      },
    );
  }
}
