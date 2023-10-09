import 'package:get/get.dart';
import '../Common/AppColor.dart';
import 'package:flutter/cupertino.dart';
import '../Model/FollowOrganizersModel.dart';
import 'package:event_booking/Model/HomeModel.dart';
import 'package:event_booking/Model/FavoriteModel.dart';
import 'package:event_booking/View/Pages/Account/About.dart';
import 'package:event_booking/Widget/Organizer_prfile/Post.dart';
import 'package:event_booking/Widget/Organizer_prfile/Events.dart';
import 'package:event_booking/Widget/Organizer_prfile/AboutOrganizer.dart';
import 'package:event_booking/View/Pages/Personalization/followOrganizers.dart';

class FavoriteController extends GetxController {
  RxBool isFollow = false.obs;
  RxInt tappedIndex = (-1).obs;
  RxSet<int> followedOrganisers = <int>{}.obs;
  RxInt isRadioTappedIndex = (-1).obs;
  RxSet<int> isRadioFollowedOrganisers = <int>{}.obs;

  RxList<FavoriteModel> favoritesList = <FavoriteModel>[
    FavoriteModel(image: 'assets/fav/music.png', name: 'Music'),
    FavoriteModel(image: 'assets/fav/festivak.png', name: 'Festival'),
    FavoriteModel(image: 'assets/fav/food.png', name: 'Food'),
    FavoriteModel(image: 'assets/fav/party.png', name: 'Party'),
    FavoriteModel(image: 'assets/fav/theater.png', name: 'Theater'),
    FavoriteModel(image: 'assets/fav/touring.png', name: 'Touring'),
    FavoriteModel(image: 'assets/fav/sport.png', name: 'Sports'),
    FavoriteModel(image: 'assets/fav/games.png', name: 'Games'),
    FavoriteModel(image: 'assets/fav/cenima.png', name: 'Cenima'),
  ].obs;

  RxList<FollowOrganizersModel> followOrganizersList = <FollowOrganizersModel>[
    FollowOrganizersModel(
        image: 'assets/fav/arga.png',
        title: 'Arga Sports',
        location: 'Bali, Indonesia',
        eventNo: '143 Event'),
    FollowOrganizersModel(
        image: 'assets/fav/edel.png',
        title: 'Arga Sports',
        location: 'Jakarta,Indonesia',
        eventNo: '143 Event'),
    FollowOrganizersModel(
        image: 'assets/fav/arga.png',
        title: 'Arga Sports',
        location: 'Bali, Indonesia',
        eventNo: '143 Event'),
    FollowOrganizersModel(
        image: 'assets/fav/edel.png',
        title: 'Arga Sports',
        location: 'Jakarta,Indonesia',
        eventNo: '143 Event'),
    FollowOrganizersModel(
        image: 'assets/fav/arga.png',
        title: 'Arga Sports',
        location: 'Bali, Indonesia',
        eventNo: '143 Event'),
    FollowOrganizersModel(
        image: 'assets/fav/edel.png',
        title: 'Arga Sports',
        location: 'Jakarta,Indonesia',
        eventNo: '143 Event'),
  ].obs;

  RxList<HomeModel> organizerProfileEventList = <HomeModel>[
    HomeModel(
        image: 'assets/home/artx.png',
        title: 'Asian Ice Skete Festival 2022',
        date: 'Dec 31-22| 11:00am-01:00pm',
        loc: 'jakarta Convention',
        amount: '10'),
    HomeModel(
        image: 'assets/home/classix.png',
        title: 'Junior Weghtlifting Chempionship 2022',
        date: 'Dec 31-22| 11:00am-01:00pm',
        loc: 'Senayan Sports Center',
        amount: '20'),
    HomeModel(
        image: 'assets/home/artx.png',
        title: 'Jakarta Marathon Festival 2022',
        date: 'Dec 31-22| 11:00am-01:00pm',
        loc: 'South jakarta',
        amount: '0'),
  ].obs;

  RxList<HomeModel> organizerProfilePostList = <HomeModel>[
    HomeModel(
        image: 'assets/home/artx.png',
        title: 'Junior DevelopmentBaskeball League 2021',
        date: 'Dec 31-22| 11:00am-01:00pm',
        loc: 'jakarta Convention',
        amount: '10'),
    HomeModel(
        image: 'assets/home/classix.png',
        title: 'Indonesia Open 2021:Grand Final',
        date: 'Dec 31-22| 11:00am-01:00pm',
        loc: 'Senayan Sports Center',
        amount: '25'),
    
  ].obs;

  RxList<String> text = ['Events', 'Post', 'About'].obs;

  RxList<Widget> Tabbar = [
    Events(),
    Post(),
    AboutOrganizer()
  ].obs;

  RxInt current = 0.obs;

  void toggleFollowState(int index) {
    if (followedOrganisers.contains(index)) {
      followedOrganisers.remove(index);
    } else {
      followedOrganisers.add(index);
    }
  }

  bool isOrganiserdFollowed(int index) {
    return followedOrganisers.contains(index);
  }

  void isRadioToggleFollowState(int index) {
    if (followedOrganisers.contains(index)) {
      followedOrganisers.remove(index);
    } else {
      followedOrganisers.add(index);
    }
  }

  bool isRadioOrganiserdFollowed(int index) {
    return followedOrganisers.contains(index);
  }
}
