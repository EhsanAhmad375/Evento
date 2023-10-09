import 'package:flutter/material.dart';
import '../../Widget/RoundButton.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:country_picker/country_picker.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Widget/TextFeildCustom.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';

class ChoosLocation extends StatelessWidget {
  const ChoosLocation({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backPink,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.white,
            Color(0xffFFD7D5),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
           AppbarCustom(media: media,title: 'Choose Country',isSufix: true,sufix: Image.asset('assets/home/menu.png'),),
           SizedBox(height:media.height*0.02),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          selectCountry(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.backPink,
                                borderRadius: BorderRadius.circular(20)),
                            width: media.width * 0.5,
                            height: media.height * 0.04,
                            child: Center(
                                child: Text(
                              'Choos your country',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blue),
                            ))),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: RoundButtonCustom(
                            isVisible: false,
                            title: 'Next',
                            onTap: () {
                              Get.toNamed(RouteName.onBoardingScreen);
                            },
                          )),
                        ],
                      )
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

  void selectCountry(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode:
          true, // optional. Shows phone code before the country name.
      onSelect: (Country country) {
        print('Select country: ${country.displayName}');
      },
    );
  }
}
