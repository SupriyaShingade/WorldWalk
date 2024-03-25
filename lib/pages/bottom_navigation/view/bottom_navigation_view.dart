import 'package:WorldWalk/common/common.dart';
import 'package:WorldWalk/global/global_layout_widget.dart';
import 'package:WorldWalk/pages/favourite/view/favourite_view.dart';
import 'package:WorldWalk/pages/home/view/home_view.dart';
import 'package:WorldWalk/pages/profile/view/profile_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controller/bottom_navigation_controller.dart';


class BottomNavigationView extends GetView<BottomNavigationController>
{
  BottomNavigationView({Key? key}) : super(key:key);

  
    @override
    Widget build(BuildContext context)
    {
      return GlobalLayoutWidget(
        context: context, 
        body: 
        Obx(() {
        if (controller.selectedIndex.value == 0) {
          return HomeView();
        } else if (controller.selectedIndex.value == 1) {
          return FavouriteView(); // Navigate to FavoritesView
        } else if (controller.selectedIndex.value == 2) {
          return ProfileView(); // Navigate to ProfileView
        } else {
          return Container();
        }
      }),
        bottomNavigationBar: Obx(
          () =>  SizedBox(
            height: 71.h,
            child: BottomNavigationBar(
              selectedItemColor: CommonColor.mainColor,
              
              // unselectedItemColor: Colors.grey,
              
            currentIndex: controller.selectedIndex.value,
            onTap: controller.updateSelectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                // icon: Image.asset(CommonImage.homeIcon),
                label: '홈',
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                // icon: Image.asset(CommonImage.starIcon),
                label: '즐겨찾기',
              ),
              BottomNavigationBarItem(
                // icon: Image.asset(CommonImage.profileIcon),
                icon: Icon(Icons.person ),
                label: 'My페이지',
              ),
            ],
                  ),
          ),
        ),
    );
  }
}