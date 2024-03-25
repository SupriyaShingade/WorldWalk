import 'package:WorldWalk/pages/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => ProfileController());
  }
}