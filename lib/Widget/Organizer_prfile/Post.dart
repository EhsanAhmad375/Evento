import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:event_booking/Controller/favoriteController.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return GetBuilder<FavoriteController>(
      init: FavoriteController(),
      builder: (favoriteController) {
        return ListView.builder(
          itemCount: favoriteController.organizerProfilePostList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: media.height * 0.2,
              width: media.width,
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    
                    Container(
                      height: media.height * 0.14,
                      width: media.width * 0.27,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        image: DecorationImage(
                          image: AssetImage(
                            favoriteController.organizerProfilePostList[index].image
                                .toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.wallet_giftcard_outlined,
                                      color: AppColors.blue, size: 18),
                                  Text(
                                    '${favoriteController.organizerProfilePostList[index].date}',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.grey),
                                  ),
                                ],
                              ),
                                   Obx(
                                    () => GestureDetector(
                                        onTap: () {
                                          favoriteController.toggleFollowState(index);
                                        },
                                        child: favoriteController.isOrganiserdFollowed(index)
                                            ? Icon(
                                                Icons.favorite,
                                                color: AppColors.favorite,
                                              )
                                            : Icon(
                                                Icons.favorite_border,
                                              )),
                                  ),
                             
                            ],
                          ),
                          Text(
                            '${favoriteController.organizerProfilePostList[index].title}',
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  '${favoriteController.organizerProfilePostList[index].loc}'),
                              Text(
                                favoriteController.organizerProfilePostList[index].amount!='0'?
                                  '${favoriteController.organizerProfilePostList[index].amount}':'FREE',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                  ),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
