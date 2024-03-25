import 'package:WorldWalk/pages/home/controller/premium_info_controller.dart';
import 'package:get/get.dart';

class PremiumInfoBinding extends Bindings{
  @override
  void dependencies()
  {
    Get.lazyPut(() => PremiumInfoController());
  }
  
}