import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PremiumInfoController extends GetxController
{
  RxBool isStarYellow = false.obs;
    RxInt currentIndex = 0.obs;



  final PageController pageController = PageController();


  void toggleStarColor() {
    isStarYellow.toggle();
  }

  // int currentPageIndex = 0;

   
}