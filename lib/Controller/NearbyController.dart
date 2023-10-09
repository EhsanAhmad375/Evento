import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Widget/home/NearByEvents.dart';
import '../Model/FollowOrganizersModel.dart';
import '../Widget/Organizer_prfile/Post.dart';
import '../Widget/Organizer_prfile/Events.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/Model/NearbyModel.dart';
import '../Widget/Organizer_prfile/FavOrganizers.dart';
import '../Widget/Organizer_prfile/AboutOrganizer.dart';




class NearbyConroller extends GetxController{
  RxInt  myindex=0.obs;
  RxList<NearbyModel> nearbyList=<NearbyModel>[
    NearbyModel(Image: 'assets/near/near1.png',title: 'Asia Dance Compitition Audition | December',dateTime: 'Dec-22-31 | 11am-5pm',loc: 'Lahore,Pakistan',amount: 130),
    NearbyModel(Image: 'assets/near/near2.png',title: 'Theatre: Talking to the Mood (2023)',dateTime: 'Dec-22-31 | 11am-5pm',loc: 'Yogyakarta Culture Park',amount: 125),
    NearbyModel(Image: 'assets/near/near3.png',title: 'Visual Projection Art Exhibition',dateTime: 'Dec-22-31 | 11am-5pm',loc: 'Karachi,Pakistan',amount: 0),
    NearbyModel(Image: 'assets/near/near4.png',title: 'Shadow Puppet Private Show',dateTime: 'Dec-22-31 | 11am-5pm',loc: 'Faisal Abad,Pakistan',amount: 150),
    NearbyModel(Image: 'assets/near/near5.png',title: 'International Sketeboard Festival',dateTime: 'Dec-22-31 | 11am-5pm',loc: 'Quita,Pakistan',amount: 0),
  ].obs;


  RxList<FollowOrganizersModel> followOrganizersList=<FollowOrganizersModel>[
    FollowOrganizersModel(image: 'assets/fav/arga.png',title: 'Arga Sports',location: 'Bali, Indonesia',eventNo: '143 Event'),
    FollowOrganizersModel(image: 'assets/fav/edel.png',title: 'Arga Sports',location: 'Jakarta,Indonesia',eventNo: '143 Event'),
    FollowOrganizersModel(image: 'assets/fav/arga.png',title: 'Arga Sports',location: 'Bali, Indonesia',eventNo: '143 Event'),
    FollowOrganizersModel(image: 'assets/fav/edel.png',title: 'Arga Sports',location: 'Jakarta,Indonesia',eventNo: '143 Event'),
    FollowOrganizersModel(image: 'assets/fav/arga.png',title: 'Arga Sports',location: 'Bali, Indonesia',eventNo: '143 Event'),
  
  ].obs;



 RxList<String> items = <String>[
    'Events',
    'Organizers',
    
  ].obs;
 

 
  RxInt current = 0.obs;

  RxList<Widget> Tabbar = [
    
    
    NearbyEvents(),
    FavOrganizers()
  ].obs;


    RxSet<int> neabyFavorite=<int>{}.obs;
  void isNeabyFavoriteState(int index) {
    if (neabyFavorite.contains(index)) {
      neabyFavorite.remove(index);
    } else {
      neabyFavorite.add(index);
    }
  }

  bool isNearbyFavorite(int index) {
    return neabyFavorite.contains(index);
  } 

}