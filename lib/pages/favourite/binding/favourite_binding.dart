import 'package:WorldWalk/pages/favourite/controller/favourite_controller.dart';
import 'package:get/get.dart';

class FavouriteBinding extends Bindings
{
  void dependencies()
  {
    Get.lazyPut(() => FavouriteController());
  }
}