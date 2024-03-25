import 'package:WorldWalk/pages/home/controller/search_tabbar_controller.dart';
import 'package:get/get.dart';

class SearchTabbarBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => SearchTabbarController());
  }
}