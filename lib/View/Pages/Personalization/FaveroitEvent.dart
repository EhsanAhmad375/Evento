import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Utility/RouteName.dart';
import 'package:event_booking/Widget/RoundButton.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/favoriteController.dart';

class FavoriteEvent extends StatelessWidget {
  const FavoriteEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              AppbarCustom(
                  media: media, title: 'Choose Favorite Event', backArrow: false),
              Expanded(
                child: GetBuilder<FavoriteController>(
                  init: FavoriteController(),
                  builder: (favController) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 0.75),
                      itemCount: favController.favoritesList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            favController.isRadioToggleFollowState(index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: media.height * 0.01,
                                ),
                                Obx(
                                  ()=> Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      favController.isRadioOrganiserdFollowed(index)
                                                ? Icon(Icons.radio_button_on,color: AppColors.blue):
                                                Icon(Icons.radio_button_off,color: AppColors.grey,)
                                         
                                                
                                    ],
                                  ),
                                ),
                                Container(
                                  height: media.height * 0.06,
                                  width: media.height * 0.06,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.white,
                                    image: DecorationImage(
                                      image: AssetImage(favController
                                          .favoritesList[index].image
                                          .toString()),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: media.height * 0.02,
                                ),
                                Text(
                                  '${favController.favoritesList[index].name}',
                                  style: TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            
              RoundButtonCustom(
                title: 'Next',
                onTap: () {
                  Get.toNamed(RouteName.followOrganizers);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
