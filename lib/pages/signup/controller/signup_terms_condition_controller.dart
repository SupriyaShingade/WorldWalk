import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupTermsConditionController extends GetxController{
  final TextEditingController nicknameController = TextEditingController();
  final termsAccepted = false.obs;
  final term1Accepted = false.obs;
  final term2Accepted = false.obs;
  final term3Accepted = false.obs;
  final term4Accepted = false.obs;
  final RxBool isButtonActive = false.obs;
}