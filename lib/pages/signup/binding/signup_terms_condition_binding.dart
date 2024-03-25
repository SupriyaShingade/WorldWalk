import 'package:WorldWalk/pages/signup/controller/signup_terms_condition_controller.dart';
import 'package:get/get.dart';

class SignupTermsConditionBinding extends Bindings{
  void dependencies()
  {
    Get.lazyPut(() => SignupTermsConditionController());
  }
}