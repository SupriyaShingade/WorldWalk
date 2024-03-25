import 'dart:io';

import 'package:WorldWalk/common/secure_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    // if (DateTime.now().difference(DateTime(2023, 7, 29)).inDays > 0) {
    //   exit(0);
    // }
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    var collection = await FirebaseFirestore.instance
        .collection('ADMIN')
        .doc('version')
        .get();

    await checkVersion(packageInfo.version, collection['version']);
    Future.delayed(const Duration(milliseconds: 500), () async {
      await SecureStorage.read(SecureStorageKeys.run) == 'T'
          // ? Get.offAllNamed('/translation')
          // ? Get.offAllNamed('/onboarding_screen2_view')
        ? Get.offAllNamed('/signup')
        // : Get.offAllNamed('');

          : Get.offAllNamed('/signup');
    });
    super.onInit();
  }

  checkVersion(String current, String latest) async {
    String currentVersion = '';
    String latestVersion = '';
    List currentVersionList = current.split('.');
    List latestVersionList = latest.split('.');
    for (var i = 0; i < currentVersionList.length; i++) {
      currentVersion += currentVersionList[i];
    }
    for (var i = 0; i < latestVersionList.length; i++) {
      latestVersion += latestVersionList[i];
    }
    // try {
    if (double.parse(currentVersion) < double.parse(latestVersion)) {
      await Get.dialog(
          CupertinoAlertDialog(
            title: Text('업데이트'),
            content: Text('새로운 버전이 있습니다. 업데이트 하시겠습니까?'),
            actions: [
              CupertinoDialogAction(
                child: Text('취소'),
                onPressed: () {
                  exit(0);
                },
              ),
              CupertinoDialogAction(
                child: Text('확인'),
                onPressed: () async {
                  if (Platform.isAndroid) {
                    await launchUrlString(
                        'https://play.google.com/store/apps/details?id=com.world.walk');
                  } else if (Platform.isIOS) {
                    await launchUrlString(
                        'https://apps.apple.com/us/app/%EC%9B%94%EB%93%9C%EC%9B%8C%ED%81%AC-%EC%9D%B8-%EB%B2%A0%ED%8A%B8%EB%82%A8-%EB%B2%88%EC%97%AD/id6462085278');
                  }
                },
              ),
            ],
          ),
          barrierDismissible: false);
    }
  }
}
