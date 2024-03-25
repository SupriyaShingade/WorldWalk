import 'package:WorldWalk/pages/home/controller/home_menu_controller.dart';
import 'package:get/get.dart';

class HomeMenuBinding extends Bindings
{
  @override
  void dependencies()
  {
    Get.lazyPut(() => HomeMenuController());
  }
}