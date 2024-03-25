import 'package:WorldWalk/pages/home/controller/tourist_info_controller.dart';
import 'package:get/get.dart';

class TouristInfoBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => TouristInfoController());
  }
}