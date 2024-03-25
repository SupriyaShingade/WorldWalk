import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NickNameController extends GetxController
{
  final TextEditingController nicknameController = TextEditingController();
  final RxBool isButtonActive = false.obs;
}