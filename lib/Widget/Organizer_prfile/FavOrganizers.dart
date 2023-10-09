import 'package:get/get.dart';
import '../../Common/AppColor.dart';
import '../../Utility/RouteName.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Controller/favoriteController.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


class FavOrganizers extends StatelessWidget {
  const FavOrganizers({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
    return GetBuilder<FavoriteController>(
        init: FavoriteController(),
        builder: (FavController) {
          return Expanded(
            child: ListView.builder(
                itemCount: FavController.followOrganizersList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed(RouteName.organizer_profile);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: media.height * 0.18,
                      width: media.width,
                      decoration: BoxDecoration(color: AppColors.white,
                      borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                          child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: media.height * 0.14,
                            width: media.height * 0.12,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        '${FavController.followOrganizersList[index].image}'),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${FavController.followOrganizersList[index].title}',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: media.height * 0.015,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: AppColors.grey,
                                  ),
                                  Text(
                                    '${FavController.followOrganizersList[index].location}',
                                    style: TextStyle(color: AppColors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: media.height * 0.005,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: AppColors.grey,
                                  ),
                                  Text(
                                    '${FavController.followOrganizersList[index].eventNo}',
                                    style: TextStyle(color: AppColors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ],
                              ),
                              Obx(
                                () => Row(
                                  children: [
                                    MaterialButton(
                                      height: media.height * 0.04,
                                      color: FavController
                                              .isOrganiserdFollowed(index)
                                          ? AppColors.grey
                                          : AppColors.styBlue,
                                      onPressed: () {
                                        // FavController.isFollow.value=!FavController.isFollow.value;
                                        FavController.toggleFollowState(
                                            index);
                                      },
                                      child: FavController
                                              .isOrganiserdFollowed(index)
                                          ? Text('Unfollow')
                                          : Text('Follow'),
                                    ),
                                    SizedBox(width: media.width*0.02,),
                                    FavController.isOrganiserdFollowed(
                                            index)
                                        ?Icon(Icons
                                            .person_add_disabled_rounded,)
                                 
                                        : Icon(Icons.person,color: AppColors.grey)
                                         
                                        
                                         ],
                                ),
                          
                              ),
                           
                            ],
                          )
                        ],
                      )),
                    ),
                  );
                }),
          );
        });
  }
}
