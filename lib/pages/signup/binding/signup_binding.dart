import 'package:WorldWalk/pages/signup/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings
{
  void dependencies(){
    Get.lazyPut(() => SignupController());
  }
}