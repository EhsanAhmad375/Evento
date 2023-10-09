import 'package:flutter/material.dart';
import '../../../Common/AppColor.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:event_booking/Widget/AppbarCustomSmall.dart';
import 'package:event_booking/Controller/HomeController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:event_booking/Controller/favoriteController.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class OrganizerProfile extends StatelessWidget {
  OrganizerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.white, AppColors.backPink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: GetBuilder<FavoriteController>(
            init: FavoriteController(),
            builder: (favoriteController) {
              return Column(
                children: [
                  
                  Container(
                    height: media.height * 0.37,
                    width: media.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(20))),
                    child: Column(
                      children: [
                        
                        AppbarCustom(
                          media: media,
                          title: 'Organizer Profile',
                        ),SizedBox(
                    height: media.height * 0.02,
                  ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: media.height * 0.15,
                              width: media.height * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          '${favoriteController.followOrganizersList[0].image}'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      '${favoriteController.followOrganizersList[0].title}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  SizedBox(
                                    height: media.height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: media.width * 0.01,
                                      ),
                                      Text(
                                          '${favoriteController.followOrganizersList[0].location}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_border,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: media.width * 0.01,
                                      ),
                                      Text(
                                          '${favoriteController.followOrganizersList[0].eventNo}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Obx(
                                        () => Row(
                                          children: [
                                            MaterialButton(
                                              height: media.height * 0.04,
                                              color: favoriteController
                                                      .isOrganiserdFollowed(0)
                                                  ? AppColors.grey
                                                  : AppColors.styBlue,
                                              onPressed: () {
                                                favoriteController
                                                    .toggleFollowState(0);
                                              },
                                              child: favoriteController
                                                      .isOrganiserdFollowed(0)
                                                  ? Text('Unfollow')
                                                  : Text('Follow'),
                                            ),
                                            SizedBox(
                                              width: media.width * 0.02,
                                            ),
                                            favoriteController
                                                    .isOrganiserdFollowed(0)
                                                ? Icon(
                                                    Icons
                                                        .person_add_disabled_rounded,
                                                  )
                                                : Icon(Icons.person,
                                                    color: AppColors.grey)
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: media.height * 0.02),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: media.height * 0.08,
                    width: media.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              favoriteController.current.value = index;
                            },
                            child: Obx(
                              () => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: media.height * 0.04,
                                    width: media.width * 0.27,
                                    decoration: BoxDecoration(
                                        color:
                                            favoriteController.current == index
                                                ? AppColors.blue
                                                : AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                        child: Text(
                                      '${favoriteController.text[index]}',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            favoriteController.current == index
                                                ? AppColors.white
                                                : AppColors.grey,
                                      ),
                                    ))),
                              ),
                            ),
                          );
                        }),
                  ),
                  Expanded(
                    child: Obx(
                      () => Container(
                        width: media.width,
                        child: favoriteController
                            .Tabbar[favoriteController.current.value],
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
