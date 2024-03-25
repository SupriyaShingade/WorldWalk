import 'package:get/get.dart';

class BottomNavigationController extends GetxController{
  var selectedIndex = 0.obs; 
  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}