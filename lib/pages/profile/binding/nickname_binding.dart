import 'package:WorldWalk/pages/profile/controller/nickname_controller.dart';
import 'package:get/get.dart';

class NickNameBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => NickNameController());
  }
}