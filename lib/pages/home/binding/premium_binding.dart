import 'package:WorldWalk/pages/home/controller/premium_controller.dart';
import 'package:get/get.dart';

class PremiumBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => PremiumController());
  }
}