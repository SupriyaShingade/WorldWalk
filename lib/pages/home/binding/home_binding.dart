import 'package:WorldWalk/pages/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  void dependencies()
  {
    Get.lazyPut(() => HomeController());
  }
}