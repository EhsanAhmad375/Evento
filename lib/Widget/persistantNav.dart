import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../View/Pages/Favorite/favorite.dart';
import 'package:event_booking/Common/AppColor.dart';
import 'package:event_booking/View/Pages/Home/Home.dart';
import 'package:event_booking/View/Pages/Ticket/Ticket.dart';
import 'package:event_booking/View/Pages/Account/MyAccount.dart';
import '../View/Pages/Search/Search.dart'; // Import GetX package
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class MyPersistent extends StatelessWidget {
  MyPersistent({Key? key}) : super(key: key);

  // Create GetX controller to manage the state
  final controller = Get.put<PersistentTabController>(PersistentTabController(initialIndex: 0));

  List<Widget> _buildScreen() {
    return [
      Home(),
      Favorite(),
      Search(),
      Ticket(),
      MyAccount(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        
        activeColorPrimary: Color.fromARGB(255, 9, 103, 180),
        icon: Icon(Icons.home_filled,),
        inactiveColorPrimary: AppColors.grey,
        activeColorSecondary: AppColors.darkBlue
      ),
      PersistentBottomNavBarItem(
        
        activeColorPrimary: Color.fromARGB(255, 9, 103, 180),
        icon: Icon(Icons.favorite_border,),
        inactiveColorPrimary: AppColors.grey,
        activeColorSecondary: AppColors.darkBlue
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: AppColors.grey,
        activeColorPrimary:AppColors.darkBlue,
        icon: Icon(Icons.search,
        color: AppColors.white,
        )
      ),
      PersistentBottomNavBarItem(
        
        activeColorPrimary: Color.fromARGB(255, 9, 103, 180),
        // icon: Image.asset('assets/fav/vector.png',),
        icon: Icon(Icons.view_day_outlined),
        inactiveColorPrimary: AppColors.grey,
        activeColorSecondary: AppColors.darkBlue
      ),
      PersistentBottomNavBarItem(
        
        activeColorPrimary: Color.fromARGB(255, 9, 103, 180),
        icon: Icon(Icons.person_3_outlined,),
        inactiveColorPrimary: AppColors.grey,
        activeColorSecondary: AppColors.darkBlue
        
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      
      context,
      controller: controller,
      screens: _buildScreen(),
      items: _navBarItem(),
      decoration: NavBarDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      ),
      navBarStyle: NavBarStyle.style16,
      backgroundColor: Colors.white,
    );
  }
}
