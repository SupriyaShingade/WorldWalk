import 'package:WorldWalk/pages/bottom_navigation/controller/bottom_navigation_controller.dart';
import 'package:get/get.dart';

class BottomNavigationBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => BottomNavigationController());
  }
}