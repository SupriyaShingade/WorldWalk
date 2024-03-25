import 'package:WorldWalk/pages/home/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => SearchEditController());
  }
}